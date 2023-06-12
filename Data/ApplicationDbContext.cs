using Microsoft.AspNetCore.Identity;
using Microsoft.AspNetCore.Identity.EntityFrameworkCore;
using Microsoft.EntityFrameworkCore;
using System.Reflection.Emit;
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

        public DbSet<Cuisine> Cuisines { get; set; }

        public DbSet<UserExcludedCuisines> UserExcludedCuisines { get; set; }


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

            builder.Entity<UserExcludedCuisines>()
                .HasKey(u => new { u.UserId, u.CuisineId });

            //builder.Entity<User>()
            //.HasMany(u => u.ExcludedCuisines)
            //.WithMany()
            //.UsingEntity<Dictionary<string, object>>(
            //    "UserExcludedCuisine",
            //    j => j
            //        .HasOne<Cuisine>()
            //        .WithMany()
            //        .HasForeignKey("CuisineId")
            //        .HasConstraintName("FK_UserExcludedCuisine_Cuisine_CuisineId")
            //        .OnDelete(DeleteBehavior.Cascade),
            //    j => j
            //        .HasOne<User>()
            //        .WithMany()
            //        .HasForeignKey("UserId")
            //        .HasConstraintName("FK_UserExcludedCuisine_User_UserId")
            //        .OnDelete(DeleteBehavior.Cascade),
            //    j =>
            //    {
            //        j.HasKey("UserId", "CuisineId");
            //        j.ToTable("UserExcludedCuisines");
            //    }
            //);
        }
    }
}