using Microsoft.AspNetCore.Mvc;
using System.Diagnostics;
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
            Random random = new Random();
            int randomId;
            Dish dish = null;

            do
            {
                randomId = random.Next(1, 100);
                dish = context.Dishes.FirstOrDefault(d => d.Id == randomId);
            } while (dish == null);


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
