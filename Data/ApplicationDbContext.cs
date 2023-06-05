using Microsoft.AspNetCore.Identity.EntityFrameworkCore;
using Microsoft.EntityFrameworkCore;
using YumMe.Models.Domain;

namespace YumMe.Data
{
    public class ApplicationDbContext : IdentityDbContext
    {
        public ApplicationDbContext(DbContextOptions<ApplicationDbContext> options)
            : base(options)
        {

        }
        public DbSet<Dish> Dishes { get; set; }

        public DbSet<Restaurant> Restaurants { get; set; }

        public DbSet<Recipe> Recipes { get; set; }
        protected override void OnModelCreating(ModelBuilder builder)
        {
            base.OnModelCreating(builder);

            builder.Entity<Dish>()
                .HasMany(r => r.Restaurants)
                .WithOne(d => d.Dish)
                .HasForeignKey(d => d.DishId);

            builder.Entity<Dish>()
               .HasMany(r => r.Recipes)
               .WithOne(d => d.Dish)
               .HasForeignKey(d => d.DishId);
        }
    }
}