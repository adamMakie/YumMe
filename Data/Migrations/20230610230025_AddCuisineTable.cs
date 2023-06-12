using Microsoft.EntityFrameworkCore.Migrations;

#nullable disable

namespace YumMe.Data.Migrations
{
    /// <inheritdoc />
    public partial class AddCuisineTable : Migration
    {
        /// <inheritdoc />
        protected override void Up(MigrationBuilder migrationBuilder)
        {
            migrationBuilder.DropColumn(
                name: "Cuisine",
                table: "Dishes");

            migrationBuilder.AddColumn<int>(
                name: "CuisineId",
                table: "Dishes",
                type: "int",
                nullable: false,
                defaultValue: 0);

            migrationBuilder.AddColumn<string>(
                name: "Discriminator",
                table: "AspNetUsers",
                type: "nvarchar(max)",
                nullable: false,
                defaultValue: "");

            migrationBuilder.AddColumn<string>(
                name: "Name",
                table: "AspNetUsers",
                type: "nvarchar(max)",
                nullable: true);

            migrationBuilder.CreateTable(
                name: "Cuisines",
                columns: table => new
                {
                    Id = table.Column<int>(type: "int", nullable: false)
                        .Annotation("SqlServer:Identity", "1, 1"),
                    Name = table.Column<string>(type: "nvarchar(max)", nullable: false),
                    DishId = table.Column<int>(type: "int", nullable: false)
                },
                constraints: table =>
                {
                    table.PrimaryKey("PK_Cuisines", x => x.Id);
                });

            migrationBuilder.CreateTable(
                name: "UserExcludedCuisines",
                columns: table => new
                {
                    UserId = table.Column<string>(type: "nvarchar(450)", nullable: false),
                    CuisineId = table.Column<int>(type: "int", nullable: false)
                },
                constraints: table =>
                {
                    table.PrimaryKey("PK_UserExcludedCuisines", x => new { x.UserId, x.CuisineId });
                    table.ForeignKey(
                        name: "FK_UserExcludedCuisines_AspNetUsers_UserId",
                        column: x => x.UserId,
                        principalTable: "AspNetUsers",
                        principalColumn: "Id",
                        onDelete: ReferentialAction.Cascade);
                    table.ForeignKey(
                        name: "FK_UserExcludedCuisines_Cuisines_CuisineId",
                        column: x => x.CuisineId,
                        principalTable: "Cuisines",
                        principalColumn: "Id",
                        onDelete: ReferentialAction.Cascade);
                });

            migrationBuilder.CreateIndex(
                name: "IX_Dishes_CuisineId",
                table: "Dishes",
                column: "CuisineId");

            migrationBuilder.CreateIndex(
                name: "IX_UserExcludedCuisines_CuisineId",
                table: "UserExcludedCuisines",
                column: "CuisineId");

            migrationBuilder.AddForeignKey(
                name: "FK_Dishes_Cuisines_CuisineId",
                table: "Dishes",
                column: "CuisineId",
                principalTable: "Cuisines",
                principalColumn: "Id",
                onDelete: ReferentialAction.Cascade);
        }

        /// <inheritdoc />
        protected override void Down(MigrationBuilder migrationBuilder)
        {
            migrationBuilder.DropForeignKey(
                name: "FK_Dishes_Cuisines_CuisineId",
                table: "Dishes");

            migrationBuilder.DropTable(
                name: "UserExcludedCuisines");

            migrationBuilder.DropTable(
                name: "Cuisines");

            migrationBuilder.DropIndex(
                name: "IX_Dishes_CuisineId",
                table: "Dishes");

            migrationBuilder.DropColumn(
                name: "CuisineId",
                table: "Dishes");

            migrationBuilder.DropColumn(
                name: "Discriminator",
                table: "AspNetUsers");

            migrationBuilder.DropColumn(
                name: "Name",
                table: "AspNetUsers");

            migrationBuilder.AddColumn<string>(
                name: "Cuisine",
                table: "Dishes",
                type: "nvarchar(max)",
                nullable: false,
                defaultValue: "");
        }
    }
}
