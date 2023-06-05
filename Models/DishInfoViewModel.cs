namespace YumMe.Models;
internal class DishInfoViewModel
{
    public string Name { get; set; }
    public List<RestaurantViewModel> Restaurants { get; set; }
    public List<RecipeViewModel> Recipes { get; set; }
}