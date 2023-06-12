using Microsoft.AspNetCore.Identity;
using Microsoft.AspNetCore.Mvc;
using Microsoft.EntityFrameworkCore;
using System.Diagnostics;
using System.Security.Claims;
using YumMe.Data;
using YumMe.Models;
using YumMe.Models.Domain;

namespace YumMe.Controllers
{
    public class HomeController : Controller
    {
        private readonly ApplicationDbContext context;

        public HomeController(ApplicationDbContext context)
        {
            this.context = context;
        }

        public IActionResult Index()
        {
            var excludedCuisineIds = new List<int>();

            if (User.Identity.IsAuthenticated)
            {
                var userId = User.FindFirstValue(ClaimTypes.NameIdentifier);

                excludedCuisineIds = context.UserExcludedCuisines
                    .Where(uec => uec.UserId == userId)
                    .Select(uec => uec.CuisineId)
                    .ToList();
            }

            Random random = new Random();
            int randomId;
            Dish dish = null;

            do
            {
                randomId = random.Next(1, 100);
                dish = context.Dishes.FirstOrDefault(d => d.Id == randomId && !excludedCuisineIds.Contains(d.CuisineId));
            } while (dish == null);

            // Retrieve the cuisine of the selected dish
            var cuisine = context.Cuisines.FirstOrDefault(c => c.Id == dish.CuisineId);

            var viewModel = new DishViewModel
            {
                Id = dish.Id,
                Name = dish.Name,
                FoodImage = dish.FoodImage,
                Cuisine = new CuisineViewModel
                {
                    Name = cuisine.Name
                }
            };

            return View(viewModel);
        }

    }
}
