-- Dishes
INSERT INTO Dishes (Name, Cuisine, FoodImage, Spicy)
VALUES
    ('Steak', 'Swedish', 'images/BiffTimjan.jpg', 'Medium'),
    ('Dragon Roll', 'Japanese', 'images/Dragonroll.jpg', 'Mild'),
    ('Hamburger', 'American', 'images/hamburgare.jpg', 'Non-Spicy'),
    ('Butter Chicken', 'Indian', 'images/indisk.jpg', 'Non-Spicy'),
    ('Chicken Basili', 'Thai', 'images/Khaphrokai.jpg', 'Non-Spicy'),
    ('Lamb BBQ', 'American', 'images/Lamm.jpg', 'Non-Spicy'),
    ('Sushi Mix', 'Japanese', 'images/Mix.jpg', 'Non-Spicy'),
    ('Phad Thai', 'Thai', 'images/PhadThai.jpg', 'Non-Spicy'),
    ('Pokebowl', 'Japanese', 'images/Pokebowl.jpg', 'Non-Spicy'),
    ('Shrimp With Rice', 'Asian', 'images/räkormedris.jpg', 'Non-Spicy'),
    ('Salmon Aspagrus', 'Swedish', 'images/Salmon.jpg', 'Non-Spicy'),
    ('Sashimi', 'Japanese', 'images/Sashimi.jpg', 'Non-Spicy'),
    ('Sea Food Pasta', 'Spanish', 'images/SeafoodPasta.jpg', 'Non-Spicy'),
    ('Shrimp Pasta', 'Italian', 'images/shrimpPasta.jpg', 'Non-Spicy')


-- Restaurants
INSERT INTO Restaurants (Name, Description, Cuisine, Location, ImageUrl, DishId)
VALUES
    ('Biff Timjan', 'A cozy restaurant offering a variety of delicious dishes.', 'Indian', 'New York', 'images/BiffTimjan', 1),
    ('Sushi Dragonroll', 'A trendy Italian restaurant specializing in pasta dishes.', 'Italian', 'London', 'images/Dragonroll.jpg', 2),
    ('Humburger', 'A popular Japanese restaurant known for its authentic sushi rolls.', 'Japanese', 'Tokyo','images/hamburgare.jpg', 3);

-- Recipes
INSERT INTO Recipes (PageUrl, Title, ImageUrl, DishId)
VALUES
    ('Fake URL to Chicken Curry Recipe', 'Delicious Chicken Curry','images/BiffTimjan', 1),
    ('Fake URL to Spaghetti Bolognese Recipe', 'Classic Spaghetti Bolognese','images/Dragonroll.jpg', 2),
    ('Fake URL to Sushi Rolls Recipe', 'Make Sushi Rolls at Home','images/hamburgare.jpg', 3);
