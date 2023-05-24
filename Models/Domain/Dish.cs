using System.Diagnostics;

namespace YumMe.Models.Domain
{
    public class Dish
    {
        public int Id { get; set; }
        public string Name { get; set; }
        public string Cuisine { get; set; }
        public Uri FoodImage { get; set; }
        public string Spicy { get; set; }

    }
}
