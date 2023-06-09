using Microsoft.AspNetCore.Authorization;
using Microsoft.AspNetCore.Mvc;
using Microsoft.EntityFrameworkCore;
using Microsoft.VisualStudio.Web.CodeGenerators.Mvc.View;
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
        return View();
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
}
