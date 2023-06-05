namespace YumMe.Models.Domain;

public class Recipe
{
    public int Id { get; set; }
    public Uri PageUrl { get; set; }
    public string Title { get; set; }
    public Uri ImageUrl { get; set; }
    public int DishId { get; set; }
    public Dish Dish { get; set; }
}
