using Microsoft.AspNetCore.Authorization;
using Microsoft.AspNetCore.Mvc;
using System.Security.Claims;
using YumMe.Data;
using YumMe.Models.Domain;

namespace YumMe.Controllers;
public class SettingsController : Controller
{
    private readonly ApplicationDbContext context;

    public SettingsController(ApplicationDbContext context)
    {

        this.context = context;
    }

    [Authorize]
    public IActionResult Index()
    {
        var userId = User.FindFirstValue(ClaimTypes.NameIdentifier);
        var cuisines = context.Cuisines.ToList();

        var excludedCuisineIds = context.UserExcludedCuisines
            .Where(uec => uec.UserId == userId)
            .Select(uec => uec.CuisineId)
            .ToList();

        var model = (Cuisines: cuisines, ExcludedCuisines: excludedCuisineIds);

        return View(model);
    }



    public IActionResult UpdateUserProfile(string id)
    {
        var user = context.Users.FirstOrDefault(u => u.Id == id);

        var viewModel = new User
        {
            Name = user.UserName,
            Email = user.Email,
            PhoneNumber = user.PhoneNumber
        };

        context.Update(viewModel);
        context.SaveChanges();

        return RedirectToAction("index");
    }
    [HttpPost]
    public IActionResult ExcludedCuisines(List<int> excludedCuisines)
    {
        var userId = User.FindFirstValue(ClaimTypes.NameIdentifier);
        var userExcludedCuisines = context.UserExcludedCuisines
            .Where(uec => uec.UserId == userId)
            .Select(uec => uec.CuisineId)
            .ToList();

        // Clear the excluded cuisines for the user
        context.UserExcludedCuisines.RemoveRange(context.UserExcludedCuisines.Where(uec => uec.UserId == userId));

        foreach (var cuisineId in excludedCuisines)
        {
            var excludedCuisine = new UserExcludedCuisines
            {
                UserId = userId,
                CuisineId = cuisineId
            };

            context.UserExcludedCuisines.Add(excludedCuisine);
        }

        context.SaveChanges();

        return RedirectToAction("Index", "Home");
    }

}
