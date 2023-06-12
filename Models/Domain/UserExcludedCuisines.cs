using Microsoft.EntityFrameworkCore;
using System.ComponentModel.DataAnnotations;
using System.ComponentModel.DataAnnotations.Schema;

namespace YumMe.Models.Domain;

public class UserExcludedCuisines
{
    public string UserId { get; set; }
    public int CuisineId { get; set; }

    public User User { get; set; }
    public Cuisine Cuisine { get; set; }
}