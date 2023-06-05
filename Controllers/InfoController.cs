using Microsoft.AspNetCore.Mvc;
using Microsoft.EntityFrameworkCore;
using YumMe.Data;
using YumMe.Models;
using YumMe.Models.Domain;

namespace YumMe.Controllers;
public class InfoController : Controller
{
    private readonly ApplicationDbContext context;

    public InfoController(ApplicationDbContext context)
    {
        this.context = context;
    }

    public IActionResult DishInfo(int id)
    {
        var dish = context.Dishes
            .Include(d => d.Restaurants)
            .Include(d => d.Recipes)
            .FirstOrDefault(d => d.Id == id);

        ViewData["Name"] = dish.Name;

        var viewModel = new DishInfoViewModel
        {
            Name = dish.Name,
            Restaurants = dish.Restaurants.Select(r => new RestaurantViewModel
            {
                Name = r.Name,
                Description = r.Description,
                Cuisine = r.Cuisine,
                Location = r.Location,
                ImageUrl = r.ImageUrl
            }).ToList(),

            Recipes = dish.Recipes.Select(x => new RecipeViewModel
            {
                PageUrl = x.PageUrl,
                Title = x.Title,
                ImageUrl = x.ImageUrl
            }).ToList()
        };

        return View(viewModel);

    }
}
