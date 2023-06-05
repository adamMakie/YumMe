using Microsoft.EntityFrameworkCore.Migrations;

#nullable disable

namespace YumMe.Data.Migrations
{
    /// <inheritdoc />
    public partial class AddImageUrlToRestaurants : Migration
    {
        /// <inheritdoc />
        protected override void Up(MigrationBuilder migrationBuilder)
        {
            migrationBuilder.RenameColumn(
                name: "cuisine",
                table: "Restaurants",
                newName: "Cuisine");

            migrationBuilder.AddColumn<string>(
                name: "ImageUrl",
                table: "Restaurants",
                type: "nvarchar(max)",
                nullable: false,
                defaultValue: "");
        }

        /// <inheritdoc />
        protected override void Down(MigrationBuilder migrationBuilder)
        {
            migrationBuilder.DropColumn(
                name: "ImageUrl",
                table: "Restaurants");

            migrationBuilder.RenameColumn(
                name: "Cuisine",
                table: "Restaurants",
                newName: "cuisine");
        }
    }
}
