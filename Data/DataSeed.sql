
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





-- Restaurants
INSERT INTO Restaurants ( Name, Description, Cuisine, Location, ImageUrl, DishId)
VALUES

    ('Biff Timjan', 'A cozy restaurant offering a variety of delicious dishes.', 'Indian', 'New York', 'images/BiffTimjan', 1),
    ('Sushi Dragonroll', 'A trendy Italian restaurant specializing in pasta dishes.', 'Italian', 'London', 'images/Dragonroll.jpg', 2),
    ('Humburger', 'A popular Japanese restaurant known for its authentic sushi rolls.', 'Japanese', 'Tokyo','images/hamburgare.jpg', 3);


-- Recipes
INSERT INTO Recipes ( PageUrl, Title, ImageUrl, DishId)
VALUES

    ('Fake URL to Chicken Curry Recipe', 'Delicious Chicken Curry','images/BiffTimjan', 1),
    ('Fake URL to Spaghetti Bolognese Recipe', 'Classic Spaghetti Bolognese','images/Dragonroll.jpg', 2),
    ('Fake URL to Sushi Rolls Recipe', 'Make Sushi Rolls at Home','images/hamburgare.jpg', 3);

