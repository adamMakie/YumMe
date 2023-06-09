﻿namespace YumMe.Models.Domain;

public class Restaurant
{
   public int Id { get; set; }
    public string Name { get; set; }
    public string Description { get; set; }
    public string Cuisine { get; set; }
    public string Location { get; set; }

    public Uri ImageUrl { get; set; }

    public int DishId { get; set; }

    public Dish Dish { get; set; }
}
