-- Dishes
INSERT INTO Dishes (Name, Cuisine, FoodImage, Spicy)
VALUES
    ('Chicken Curry', 'Indian', 'https://placeholder.com/300', 'Medium'),
    ('Spaghetti Bolognese', 'Italian', 'https://placeholder.com/300', 'Mild'),
    ('Sushi Rolls', 'Japanese', 'https://placeholder.com/300', 'Non-Spicy');

-- Restaurants
INSERT INTO Restaurants (Name, Description, Cuisine, Location, ImageUrl, DishId)
VALUES
    ('Tasty Treats', 'A cozy restaurant offering a variety of delicious dishes.', 'Indian', 'New York', 'https://placeholder.com/300', 1),
    ('Pasta Paradise', 'A trendy Italian restaurant specializing in pasta dishes.', 'Italian', 'London', 'https://placeholder.com/300', 2),
    ('Tokyo Delights', 'A popular Japanese restaurant known for its authentic sushi rolls.', 'Japanese', 'Tokyo', 'https://placeholder.com/300', 3);

-- Recipes
INSERT INTO Recipes (PageUrl, Title, ImageUrl, DishId)
VALUES
    ('Fake URL to Chicken Curry Recipe', 'Delicious Chicken Curry Recipe', 'https://placeholder.com/300', 1),
    ('Fake URL to Spaghetti Bolognese Recipe', 'Classic Spaghetti Bolognese Recipe', 'https://placeholder.com/300', 2),
    ('Fake URL to Sushi Rolls Recipe', 'Make Sushi Rolls at Home', 'https://placeholder.com/300', 3);
