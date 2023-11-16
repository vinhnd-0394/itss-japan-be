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
