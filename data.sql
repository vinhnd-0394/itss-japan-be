USE `itss-japan`;

INSERT INTO Recipes (recipeName, author, unknownIngre, foodID, createdAt, updatedAt)
VALUES ('Spaghetti Carbonara', 1, 'Bacon, eggs, cheese', 1, CURRENT_TIMESTAMP, CURRENT_TIMESTAMP);

INSERT INTO Recipes (recipeName, author, unknownIngre, foodID, createdAt, updatedAt)
VALUES ('Chicken Alfredo', 2, 'Chicken, cream sauce', 2, CURRENT_TIMESTAMP, CURRENT_TIMESTAMP);

INSERT INTO Recipes (recipeName, author, unknownIngre, foodID, createdAt, updatedAt)
VALUES ('Vegetable Stir-fry', 3, 'Mixed vegetables, soy sauce', 3, CURRENT_TIMESTAMP, CURRENT_TIMESTAMP);

-- Tiếp tục với các câu lệnh INSERT khác tương tự

INSERT INTO Foods (foodName, foodDescription, recipeID) VALUES ('Pasta', 'Delicious pasta dish', 1);
INSERT INTO Foods (foodName, foodDescription, recipeID) VALUES ('Salad', 'Fresh garden salad', 2);
INSERT INTO Foods (foodName, foodDescription, recipeID) VALUES ('Pizza', 'Classic Italian pizza', 3);

-- Insert users

INSERT INTO Users (id, displayName, username, email, password, isAdmin, createdAt, updatedAt) VALUES
(1, 'Nguyet', 'NguyetLe', 'nguyetle@gmail.com', '123456', 0, '2023-11-18 17:16:35', '2023-11-18 17:16:35'),
(2, 'Vinh', 'DuyVinh', 'vinh@gmail.com', '123456', 1, '2023-11-18 17:17:23', '2023-11-18 17:17:23'),
(3, 'Thai', 'ThaiDui', 'thai@gmail.com', '123456', 0, '2023-11-18 17:16:35', '2023-11-18 17:16:35');
-- Insert favorite foods
INSERT INTO FavoriteFoods (id,`user_id`,`food_id`,`createdAt`,`updatedAt`) VALUES
(1,1,1,'2023-11-18 17:16:35', '2023-11-18 17:16:35'),
(3,2,1,'2023-11-18 17:16:35', '2023-11-18 17:16:35'),
(4,2,2,'2023-11-18 17:16:35', '2023-11-18 17:16:35'),
(5,3,1,'2023-11-18 17:16:35', '2023-11-18 17:16:35'),
(6,3,2,'2023-11-18 17:16:35', '2023-11-18 17:16:35'),
(7,3,3,'2023-11-18 17:16:35', '2023-11-18 17:16:35'),
(2,1,2,'2023-11-18 17:16:35', '2023-11-18 17:16:35');
