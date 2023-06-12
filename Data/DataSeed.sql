-- Dishes
SET IDENTITY_INSERT YumMe.dbo.Dishes ON;
INSERT INTO Dishes (ID, Name, FoodImage, Spicy, CuisineId)
VALUES
    (1, 'Steak', 'images/BiffTimjan.jpg', 'Medium', (SELECT id from Cuisines WHERE Id='1' )),
    (2, 'Dragon Roll', 'images/Dragonroll.jpg', 'Mild', (SELECT id from Cuisines WHERE Id='2' )),
    (3, 'Hamburger', 'images/hamburgare.jpg', 'Non-Spicy', (SELECT id from Cuisines WHERE Id='3' )),
    (4, 'Butter Chicken', 'images/indisk.jpg', 'Non-Spicy', (SELECT id from Cuisines WHERE Id='4' )),
    (5, 'Chicken Basili', 'images/Khaphrokai.jpg', 'Non-Spicy', (SELECT id from Cuisines WHERE Id='5' )),
    (6, 'Lamb BBQ', 'images/Lamm.jpg', 'Non-Spicy', (SELECT id from Cuisines WHERE Id='1' )),
    (7, 'Sushi Mix', 'images/Mix.jpg', 'Non-Spicy', (SELECT id from Cuisines WHERE Id='2' )),
    (8, 'Phad Thai', 'images/PhadThai.jpg', 'Non-Spicy', (SELECT id from Cuisines WHERE Id='5' )),
    (9, 'Pokebowl', 'images/Pokebowl.jpg', 'Non-Spicy', (SELECT id from Cuisines WHERE Id='2' )),
    (10, 'Shrimp With Rice', 'images/räkormedris.jpg', 'Non-Spicy', (SELECT id from Cuisines WHERE Id='5' )),
    (11, 'Salmon Aspagrus', 'images/Salmon.jpg', 'Non-Spicy', (SELECT id from Cuisines WHERE Id='1' )),
    (12, 'Sashimi', 'images/Sashimi.jpg', 'Non-Spicy', (SELECT id from Cuisines WHERE Id='2' )),
    (13, 'Sea Food Pasta', 'images/SeafoodPasta.jpg', 'Non-Spicy', (SELECT id from Cuisines WHERE Id='14' )),
    (14, 'Shrimp Pasta', 'images/shrimpPasta.jpg', 'Non-Spicy', (SELECT id from Cuisines WHERE Id='14' ));
SET IDENTITY_INSERT YumMe.dbo.Dishes OFF;

-- Cuisines
SET IDENTITY_INSERT YumMe.dbo.Cuisines ON;
INSERT INTO Cuisines (ID, DishID, Name)
VALUES
    (1, 1, 'Swedish'),
    (2, 2, 'Japanese'),
    (3, 3, 'American'),
    (4, 4, 'Indian'),
    (5, 5, 'Thai'),
    (13, 13, 'Spanish'),
    (14, 14, 'Italian');
SET IDENTITY_INSERT YumMe.dbo.Cuisines OFF;




-- Restaurants
SET IDENTITY_INSERT YumMe.dbo.Restaurants ON
INSERT INTO Restaurants (ID, Name, Description, Cuisine, Location, ImageUrl, DishId)
VALUES
    (1, 'Tasty Treats', 'A cozy restaurant offering a variety of delicious dishes.', 'Indian', 'New York', 'images/BiffTimjan', 1),
    (2, 'Pasta Paradise', 'A trendy Italian restaurant specializing in pasta dishes.', 'Italian', 'London', 'images/Dragonroll.jpg', 2),
    (3, 'Tokyo Delights', 'A popular Japanese restaurant known for its authentic sushi rolls.', 'Japanese', 'Tokyo', 'images/hamburgare.jpg', 3);

SET IDENTITY_INSERT YumMe.dbo.Restaurants OFF


-- Recipes
SET IDENTITY_INSERT YumMe.dbo.Recipes ON
INSERT INTO Recipes (ID, PageUrl, Title, ImageUrl, DishId)
VALUES
    (1, 'Fake URL to Chicken Curry Recipe', 'Delicious Chicken Curry Recipe', 'images/indisk.jpg', 1),
    (2, 'Fake URL to Spaghetti Bolognese Recipe', 'Classic Spaghetti Bolognese Recipe', 'images/SeafoodPasta.jpg', 2),
    (3, 'Fake URL to Sushi Rolls Recipe', 'Make Sushi Rolls Recipe', 'images/Sashimi.jpg', 3);

SET IDENTITY_INSERT YumMe.dbo.Recipes OFF