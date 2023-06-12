using System.Diagnostics;
using YumMe.Data.Migrations;

namespace YumMe.Models.Domain
{
    public class Dish
    {
        public int Id { get; set; }
        public string Name { get; set; }
        public Uri FoodImage { get; set; }
        public string Spicy { get; set; }
        public int CuisineId { get; set; }
        public Cuisine Cuisine { get; set; }
        public IList<Restaurant> Restaurants { get; set; }
        public IList<Recipe> Recipes { get; set; }
    }
}
