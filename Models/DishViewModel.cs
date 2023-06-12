namespace YumMe.Models;

 public class DishViewModel
{
    public int Id { get; set; }
    public string Name { get; set; }
    public Uri FoodImage { get; set; }
    public CuisineViewModel Cuisine { get; set; }
}