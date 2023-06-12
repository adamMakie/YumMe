namespace YumMe.Models.Domain;

public class Cuisine
{
    public int Id { get; set; }
    public string Name { get; set; }
    public int DishId { get; set; }
    public IList<Dish> Dishes { get; set; }

}
