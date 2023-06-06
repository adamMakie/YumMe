using Microsoft.AspNetCore.Mvc;
using System.Diagnostics;
using YumMe.Data;
using YumMe.Models;

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
            Random random = new Random();
            var randomId = random.Next(1, 6);
            var dish = context.Dishes
                .FirstOrDefault(d => d.Id == randomId);

            var viewModel = new DishViewModel
            { 
                Id = dish.Id,
                Name = dish.Name,
                Cuisine = dish.Cuisine,
                FoodImage = dish.FoodImage
            };
            return View(viewModel);
        }

    }
}
