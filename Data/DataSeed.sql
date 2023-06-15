
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

    ('BIFF TIMJAN', 'A cozy restaurant offering a variety of delicious dishes.', 'American', 'New York', 'https://th.bing.com/th/id/OIP.KQBU1CWtvXGIQJRVZHbpWAHaE7?pid=ImgDet&rs=1', 1),
    ('SUSHI DRAGONROLL', 'A popular Japanese restaurant known for its authentic sushi rolls.', 'Japanese', 'London', 'https://gastrogate.com/thumbs/2000/files/32542/img-0019.JPG', 2),
    ('HUMBURGER', 'BEST BURGERS IN GOTHENBURG.', 'American', 'GOTHENBURG','https://thatsup.website/storage/190/9471/responsive-images/_DSF0173___media_library_original_1223_815.jpg', 3);


-- Recipes
INSERT INTO Recipes ( PageUrl, Title, ImageUrl, DishId)
VALUES

    ('https://www.thespruceeats.com/tomahawk-rib-eye-steak-2313425', 'DELICIOUS BEEF TIMJAN STEAK','https://th.bing.com/th/id/OIP.KQBU1CWtvXGIQJRVZHbpWAHaE7?pid=ImgDet&rs=1', 1),
    ('https://receptfavoriter.se/matartiklar/lyckas-med-hemgjord-sushi-maki-och-sashimi.html', 'ZUSHI SIGNATURE ROLL','https://gastrogate.com/thumbs/2000/files/32542/img-0019.JPG', 2),
    ('https://bbqlovers.se/smashburgare-sa-har-gor-du/', 'SMASHED BURGERS','https://thatsup.website/storage/190/9471/responsive-images/_DSF0173___media_library_original_1223_815.jpg', 3);

