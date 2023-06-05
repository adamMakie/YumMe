using Microsoft.EntityFrameworkCore.Migrations;

#nullable disable

namespace YumMe.Data.Migrations
{
    /// <inheritdoc />
    public partial class AddDishIdtoRestaurants : Migration
    {
        /// <inheritdoc />
        protected override void Up(MigrationBuilder migrationBuilder)
        {
            migrationBuilder.AddColumn<int>(
                name: "DishId",
                table: "Restaurants",
                type: "int",
                nullable: false,
                defaultValue: 0);

            migrationBuilder.CreateIndex(
                name: "IX_Restaurants_DishId",
                table: "Restaurants",
                column: "DishId");

            migrationBuilder.AddForeignKey(
                name: "FK_Restaurants_Dishes_DishId",
                table: "Restaurants",
                column: "DishId",
                principalTable: "Dishes",
                principalColumn: "Id",
                onDelete: ReferentialAction.Cascade);
        }

        /// <inheritdoc />
        protected override void Down(MigrationBuilder migrationBuilder)
        {
            migrationBuilder.DropForeignKey(
                name: "FK_Restaurants_Dishes_DishId",
                table: "Restaurants");

            migrationBuilder.DropIndex(
                name: "IX_Restaurants_DishId",
                table: "Restaurants");

            migrationBuilder.DropColumn(
                name: "DishId",
                table: "Restaurants");
        }
    }
}
