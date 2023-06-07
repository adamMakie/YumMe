-- Dishes
INSERT INTO Dishes (Name, Cuisine, FoodImage, Spicy)
VALUES
    ('Biff Timjan', 'Swedish', 'images/BiffTimjan.jpg', 'Medium'),
    ('DragonRoll', 'Japanese', 'images/Dragonroll.jpg', 'Mild'),
    ('Hamburga', 'American', 'images/hamburgare.jpg', 'Non-Spicy'),
     ('Butter Chiken', 'India', 'images/indisk.jpg', 'Non-Spicy'),
      ('Chiken Basili', 'Thai', 'images/Khaphrokai.jpg', 'Non-Spicy'),
       ('Lamm BBQ', 'American', 'images/Lamm.jpg', 'Non-Spicy'),
        ('Sushi Mix', 'Japanese', 'images/Mix.jpg', 'Non-Spicy'),
         ('PhadThai', 'Thai', 'images/PhadThai.jpg', 'Non-Spicy'),
          ('Pokebowl', 'Japanese', 'images/Pokebowl.jpg', 'Non-Spicy'),
           ('Shrimp With Rice', 'Asian', 'images/räkormedris.jpg', 'Non-Spicy'),
            ('Salmon Aspagrus', 'Swedish', 'images/Salmon.jpg', 'Non-Spicy'),
             ('Sashimi', 'Japanese', 'images/Sashimi.jpg', 'Non-Spicy'),
              ('SeaFood Pasta', 'Spanish', 'images/SeafoodPasta.jpg', 'Non-Spicy'),
               ('Shrimp Pasta', 'Italia', 'images/shrimpPasta.jpg', 'Non-Spicy'),
                ('Veganburger', 'American', 'images/veganburger.jpg', 'Non-Spicy');


-- Restaurants
INSERT INTO Restaurants (Name, Description, Cuisine, Location, ImageUrl, DishId)
VALUES
    ('Tasty Treats', 'A cozy restaurant offering a variety of delicious dishes.', 'Indian', 'New York', 'images/BiffTimjan', 1),
    ('Pasta Paradise', 'A trendy Italian restaurant specializing in pasta dishes.', 'Italian', 'London', 'images/Dragonroll.jpg', 2),
    ('Tokyo Delights', 'A popular Japanese restaurant known for its authentic sushi rolls.', 'Japanese', 'Tokyo', 'images/hamburgare.jpg', 3);

-- Recipes
INSERT INTO Recipes (PageUrl, Title, ImageUrl, DishId)
VALUES
    ('Fake URL to Chicken Curry Recipe', 'Delicious Chicken Curry Recipe', 'images/indisk.jpg', 1),
    ('Fake URL to Spaghetti Bolognese Recipe', 'Classic Spaghetti Bolognese Recipe', 'images/SeafoodPasta.jpg', 2),
    ('Fake URL to Sushi Rolls Recipe', 'Make Sushi Rolls at Home', 'images/Mix.jpg', 3);
