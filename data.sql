USE `itss-japan`;

-- Insert users

INSERT INTO Users (id, displayName, username, email, password, isAdmin, createdAt, updatedAt) VALUES
(1, 'Nguyet', 'NguyetLe', 'nguyetle@gmail.com', '123456', 0, '2023-11-18 17:16:35', '2023-11-18 17:16:35'),
(2, 'Vinh', 'DuyVinh', 'vinh@gmail.com', '123456', 1, '2023-11-18 17:17:23', '2023-11-18 17:17:23'),
(3, 'Thai', 'ThaiDui', 'thai@gmail.com', '123456', 0, '2023-11-18 17:16:35', '2023-11-18 17:16:35');

INSERT INTO Recipes (recipeName, author, unknownIngre, foodID, createdAt, updatedAt)
VALUES
  ('Công thức Bún chả', 1, 'Nước mắm, nước dùng cay, bún, thịt nướng', 1, CURRENT_TIMESTAMP, CURRENT_TIMESTAMP),
  ('Công thức Phở gà', 1, 'Ginger, cinnamon, cardamom, star anise, cloves', 2, CURRENT_TIMESTAMP, CURRENT_TIMESTAMP),
  ('Công thức Cơm niêu cá basa', 1, 'Cá basa, nước mắm, gạo, mỡ hành', 3, CURRENT_TIMESTAMP, CURRENT_TIMESTAMP),
  ('Công thức Bánh mì bơ tỏi', 1, 'Bánh mì, bơ, tỏi, pate, rau sống', 4, CURRENT_TIMESTAMP, CURRENT_TIMESTAMP),
  ('Công thức Gỏi cuốn tôm thịt', 1, 'Tôm, thịt, bún, rau sống, nước mắm', 5, CURRENT_TIMESTAMP, CURRENT_TIMESTAMP),
  ('Công thức Bún riêu cua', 1, 'Bún, cua, cà chua, bún, hành lá', 6, CURRENT_TIMESTAMP, CURRENT_TIMESTAMP),
  ('Công thức Mì quảng', 3, 'Miến, tôm, thịt, bánh tráng, nước mắm', 7, CURRENT_TIMESTAMP, CURRENT_TIMESTAMP),
  ('Công thức Cơm gà xé nước mắm', 3, 'Gà, cơm, nước mắm, hành lá, gia vị', 8, CURRENT_TIMESTAMP, CURRENT_TIMESTAMP),
  ('Công thức Bánh mì chảo trứng', 3, 'Bánh mì, trứng, mayonnaise, gia vị', 9, CURRENT_TIMESTAMP, CURRENT_TIMESTAMP),
  ('Công thức Lẩu cá diêu hồng', 3, 'Cá diêu hồng, nước lẩu, rau sống, gia vị', 10, CURRENT_TIMESTAMP, CURRENT_TIMESTAMP);

INSERT INTO Foods (foodName, foodDescription, recipeID)
VALUES
  ( 'Bún chả', 'Bún chả Hà Nội với nem nướng thơm béo, nước mắm pha chua ngọt.', 1),
  ( 'Phở gà', 'Phở gà Việt Nam với nước dùng đậm đà, thịt gà mềm và các loại gia vị.', 2),
  ( 'Cơm niêu cá basa', 'Cơm niêu cá basa chiên giòn, ăn kèm với nước mắm pha chua ngọt.', 3),
  ( 'Bánh mì bơ tỏi', 'Bánh mì bơ tỏi thơm ngon, giòn tan, ăn kèm với pate và rau sống.', 4),
  ( 'Gỏi cuốn tôm thịt', 'Gỏi cuốn tôm thịt tươi ngon, ăn kèm với nước mắm pha chua ngọt.', 5),
  ( 'Bún riêu cua', 'Bún riêu cua cay nồng, thơm ngon, có nước dùng cua đậm đà.', 6),
  ( 'Mì quảng', 'Mì quảng Miền Trung với nước dùng ngon và nhiều loại thực phẩm.', 7),
  ( 'Cơm gà xé nước mắm', 'Cơm gà xé nước mắm với thịt gà xé nhuyễn, ăn kèm với nước mắm pha chua ngọt.', 8),
  ( 'Bánh mì chảo trứng', 'Bánh mì chảo trứng giòn tan, ăn kèm với sốt mayonnaise.', 9),
  ( 'Lẩu cá diêu hồng', 'Lẩu cá diêu hồng với nước lẩu thơm ngon, cá tươi ngon và nhiều loại rau.', 10);

INSERT INTO Ingredients (ingredientName, createdAt, updatedAt)
VALUES
  ('Nước mắm Phú Quốc', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP),
  ('Nước dùng cay',  CURRENT_TIMESTAMP, CURRENT_TIMESTAMP),
  ('Bún',  CURRENT_TIMESTAMP, CURRENT_TIMESTAMP),
  ('Thịt nướng',  CURRENT_TIMESTAMP, CURRENT_TIMESTAMP),
  ('Ginger',  CURRENT_TIMESTAMP, CURRENT_TIMESTAMP),
  ('Cinnamon',  CURRENT_TIMESTAMP, CURRENT_TIMESTAMP),
  ('Cardamom',  CURRENT_TIMESTAMP, CURRENT_TIMESTAMP),
  ( 'Star anise',  CURRENT_TIMESTAMP, CURRENT_TIMESTAMP),
  ( 'Cloves',  CURRENT_TIMESTAMP, CURRENT_TIMESTAMP),
  ( 'Cá basa',  CURRENT_TIMESTAMP, CURRENT_TIMESTAMP),
  ( 'Nước mắm',  CURRENT_TIMESTAMP, CURRENT_TIMESTAMP),
  ( 'Gạo',  CURRENT_TIMESTAMP, CURRENT_TIMESTAMP),
  ( 'Mỡ hành',  CURRENT_TIMESTAMP, CURRENT_TIMESTAMP),
  ( 'Bánh mì',  CURRENT_TIMESTAMP, CURRENT_TIMESTAMP),
  ( 'Bơ',  CURRENT_TIMESTAMP, CURRENT_TIMESTAMP),
  ( 'Tỏi',  CURRENT_TIMESTAMP, CURRENT_TIMESTAMP),
  ( 'Pate', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP),
  ( 'Rau sống',  CURRENT_TIMESTAMP, CURRENT_TIMESTAMP),
  ( 'Tôm',  CURRENT_TIMESTAMP, CURRENT_TIMESTAMP),
  ( 'Thịt',  CURRENT_TIMESTAMP, CURRENT_TIMESTAMP),
  ( 'Bún',  CURRENT_TIMESTAMP, CURRENT_TIMESTAMP),
  ( 'Rau sống',  CURRENT_TIMESTAMP, CURRENT_TIMESTAMP),
  ( 'Nước mắm',  CURRENT_TIMESTAMP, CURRENT_TIMESTAMP),
  ( 'Bún',  CURRENT_TIMESTAMP, CURRENT_TIMESTAMP),
  ( 'Cua',  CURRENT_TIMESTAMP, CURRENT_TIMESTAMP),
  ( 'Cà chua',  CURRENT_TIMESTAMP, CURRENT_TIMESTAMP),
  ( 'Bún',  CURRENT_TIMESTAMP, CURRENT_TIMESTAMP),
  ( 'Hành lá',  CURRENT_TIMESTAMP, CURRENT_TIMESTAMP),
  ( 'Miến',  CURRENT_TIMESTAMP, CURRENT_TIMESTAMP),
  ( 'Tôm',  CURRENT_TIMESTAMP, CURRENT_TIMESTAMP),
  ( 'Thịt',  CURRENT_TIMESTAMP, CURRENT_TIMESTAMP),
  ( 'Bánh tráng',  CURRENT_TIMESTAMP, CURRENT_TIMESTAMP),
  ( 'Nước mắm',  CURRENT_TIMESTAMP, CURRENT_TIMESTAMP),
  ( 'Gà',  CURRENT_TIMESTAMP, CURRENT_TIMESTAMP),
  ( 'Cơm',  CURRENT_TIMESTAMP, CURRENT_TIMESTAMP),
  ( 'Nước mắm',  CURRENT_TIMESTAMP, CURRENT_TIMESTAMP),
  ( 'Hành lá',  CURRENT_TIMESTAMP, CURRENT_TIMESTAMP),
  ( 'Gia vị',  CURRENT_TIMESTAMP, CURRENT_TIMESTAMP),
  ( 'Bánh mì',  CURRENT_TIMESTAMP, CURRENT_TIMESTAMP),
  ( 'Trứng',  CURRENT_TIMESTAMP, CURRENT_TIMESTAMP),
  ( 'Mayonnaise',  CURRENT_TIMESTAMP, CURRENT_TIMESTAMP),
  ( 'Gia vị',  CURRENT_TIMESTAMP, CURRENT_TIMESTAMP),
  ( 'Cá diêu hồng',  CURRENT_TIMESTAMP, CURRENT_TIMESTAMP),
  ( 'Nước lẩu', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP),
  ( 'Rau sống',  CURRENT_TIMESTAMP, CURRENT_TIMESTAMP),
  ( 'Gia vị',  CURRENT_TIMESTAMP, CURRENT_TIMESTAMP);


-- Dữ liệu cho công thức Bún chả
INSERT INTO IngredientRecipes (recipeID, ingredientID, quantity, unit, type, createdAt, updatedAt)
VALUES
  (1, 1, 1, 'con', 'Nguyên liệu', '2023-11-18 17:16:35', '2023-11-18 17:16:35'),
  (1, 2, 2, 'lọ', 'Nguyên liệu', '2023-11-18 17:16:35', '2023-11-18 17:16:35'),
  (1, 3, 200, 'gram', 'Nguyên liệu', '2023-11-18 17:16:35', '2023-11-18 17:16:35'),
  (1, 4, 300, 'gram', 'Nguyên liệu', '2023-11-18 17:16:35', '2023-11-18 17:16:35');

-- Dữ liệu cho công thức Phở gà
INSERT INTO IngredientRecipes (recipeID, ingredientID, quantity, unit, type, createdAt, updatedAt)
VALUES
  (2, 5, 50, 'gram', 'Nguyên liệu', '2023-11-18 17:16:35', '2023-11-18 17:16:35'),
  (2, 6, 3, 'cây', 'Nguyên liệu', '2023-11-18 17:16:35', '2023-11-18 17:16:35'),
  (2, 7, 4, 'quả', 'Nguyên liệu', '2023-11-18 17:16:35', '2023-11-18 17:16:35'),
  (2, 8, 5, 'quả', 'Nguyên liệu', '2023-11-18 17:16:35', '2023-11-18 17:16:35'),
  (2, 9, 6, 'quả', 'Nguyên liệu', '2023-11-18 17:16:35', '2023-11-18 17:16:35');

-- Dữ liệu cho công thức Cơm niêu cá basa
INSERT INTO IngredientRecipes (recipeID, ingredientID, quantity, unit, type, createdAt, updatedAt)
VALUES
  (3, 10, 300, 'gram', 'Nguyên liệu', '2023-11-18 17:16:35', '2023-11-18 17:16:35'),
  (3, 11, 2, 'lọ', 'Nguyên liệu', '2023-11-18 17:16:35', '2023-11-18 17:16:35'),
  (3, 12, 200, 'gram', 'Nguyên liệu', '2023-11-18 17:16:35', '2023-11-18 17:16:35'),
  (3, 13, 2, 'muỗng canh', 'Nguyên liệu', '2023-11-18 17:16:35', '2023-11-18 17:16:35');

-- Dữ liệu cho công thức Bánh mì bơ tỏi
INSERT INTO IngredientRecipes (recipeID, ingredientID, quantity, unit, type, createdAt, updatedAt)
VALUES
  (4, 14, 1, 'ổ', 'Nguyên liệu', '2023-11-18 17:16:35', '2023-11-18 17:16:35'),
  (4, 15, 2, 'quả', 'Nguyên liệu', '2023-11-18 17:16:35', '2023-11-18 17:16:35'),
  (4, 16, 3, 'gốc', 'Nguyên liệu', '2023-11-18 17:16:35', '2023-11-18 17:16:35'),
  (4, 17, 1, 'gói', 'Nguyên liệu', '2023-11-18 17:16:35', '2023-11-18 17:16:35'),
  (4, 18, 100, 'gram', 'Nguyên liệu', '2023-11-18 17:16:35', '2023-11-18 17:16:35');

-- Dữ liệu cho công thức Gỏi cuốn tôm thịt
INSERT INTO IngredientRecipes (recipeID, ingredientID, quantity, unit, type, createdAt, updatedAt)
VALUES
  (5, 19, 200, 'gram', 'Nguyên liệu', '2023-11-18 17:16:35', '2023-11-18 17:16:35'),
  (5, 20, 150, 'gram', 'Nguyên liệu', '2023-11-18 17:16:35', '2023-11-18 17:16:35'),
  (5, 21, 100, 'gram', 'Nguyên liệu', '2023-11-18 17:16:35', '2023-11-18 17:16:35'),
  (5, 22, 1, 'gói', 'Nguyên liệu', '2023-11-18 17:16:35', '2023-11-18 17:16:35'),
  (5, 23, 2, 'muỗng canh', 'Nguyên liệu', '2023-11-18 17:16:35', '2023-11-18 17:16:35');

-- Dữ liệu cho công thức Bún riêu cua
INSERT INTO IngredientRecipes (recipeID, ingredientID, quantity, unit, type, createdAt, updatedAt)
VALUES
  (6, 24, 300, 'gram', 'Nguyên liệu', '2023-11-18 17:16:35', '2023-11-18 17:16:35'),
  (6, 25, 2, 'con', 'Nguyên liệu', '2023-11-18 17:16:35', '2023-11-18 17:16:35'),
  (6, 26, 5, 'quả', 'Nguyên liệu', '2023-11-18 17:16:35', '2023-11-18 17:16:35'),
  (6, 27, 200, 'gram', 'Nguyên liệu', '2023-11-18 17:16:35', '2023-11-18 17:16:35'),
  (6, 28, 1, 'bó', 'Nguyên liệu', '2023-11-18 17:16:35', '2023-11-18 17:16:35');

-- Dữ liệu cho công thức Mì quảng
INSERT INTO IngredientRecipes (recipeID, ingredientID, quantity, unit, type, createdAt, updatedAt)
VALUES
  (7, 29, 100, 'gram', 'Nguyên liệu', '2023-11-18 17:16:35', '2023-11-18 17:16:35'),
  (7, 30, 150, 'gram', 'Nguyên liệu', '2023-11-18 17:16:35', '2023-11-18 17:16:35'),
  (7, 31, 100, 'gram', 'Nguyên liệu', '2023-11-18 17:16:35', '2023-11-18 17:16:35'),
  (7, 32, 2, 'tấm', 'Nguyên liệu', '2023-11-18 17:16:35', '2023-11-18 17:16:35'),
  (7, 33, 2, 'muỗng canh', 'Nguyên liệu', '2023-11-18 17:16:35', '2023-11-18 17:16:35');

-- Dữ liệu cho công thức Cơm gà xé nước mắm
INSERT INTO IngredientRecipes (recipeID, ingredientID, quantity, unit, type, createdAt, updatedAt)
VALUES
  (8, 34, 1, 'con', 'Nguyên liệu', '2023-11-18 17:16:35', '2023-11-18 17:16:35'),
  (8, 35, 2, 'tô', 'Nguyên liệu', '2023-11-18 17:16:35', '2023-11-18 17:16:35'),
  (8, 36, 3, 'muỗng canh', 'Nguyên liệu', '2023-11-18 17:16:35', '2023-11-18 17:16:35'),
  (8, 37, 1, 'bó', 'Nguyên liệu', '2023-11-18 17:16:35', '2023-11-18 17:16:35'),
  (8, 38, 1, 'gói', 'Nguyên liệu', '2023-11-18 17:16:35', '2023-11-18 17:16:35');

-- Dữ liệu cho công thức Bánh mì chảo trứng
INSERT INTO IngredientRecipes (recipeID, ingredientID, quantity, unit, type, createdAt, updatedAt)
VALUES
  (9, 39, 1, 'ổ', 'Nguyên liệu', '2023-11-18 17:16:35', '2023-11-18 17:16:35'),
  (9, 40, 2, 'quả', 'Nguyên liệu', '2023-11-18 17:16:35', '2023-11-18 17:16:35'),
  (9, 41, 2, 'muỗng canh', 'Nguyên liệu', '2023-11-18 17:16:35', '2023-11-18 17:16:35'),
  (9, 42, 1, 'muỗng canh', 'Nguyên liệu', '2023-11-18 17:16:35', '2023-11-18 17:16:35');

-- Dữ liệu cho công thức Lẩu cá diêu hồng
INSERT INTO IngredientRecipes (recipeID, ingredientID, quantity, unit, type, createdAt, updatedAt)
VALUES
  (10, 43, 1, 'con', 'Nguyên liệu', '2023-11-18 17:16:35', '2023-11-18 17:16:35'),
  (10, 44, 1, 'lít', 'Nguyên liệu', '2023-11-18 17:16:35', '2023-11-18 17:16:35'),
  (10, 45, 1, 'tô', 'Nguyên liệu', '2023-11-18 17:16:35', '2023-11-18 17:16:35'),
  (10, 46, 1, 'gói', 'Nguyên liệu', '2023-11-18 17:16:35', '2023-11-18 17:16:35');


-- Insert favorite foods
INSERT INTO FavoriteFoods (id,`user_id`,`food_id`,`createdAt`,`updatedAt`) VALUES
(1,1,1,'2023-11-18 17:16:35', '2023-11-18 17:16:35'),
(3,2,1,'2023-11-18 17:16:35', '2023-11-18 17:16:35'),
(4,2,2,'2023-11-18 17:16:35', '2023-11-18 17:16:35'),
(5,3,1,'2023-11-18 17:16:35', '2023-11-18 17:16:35'),
(6,3,2,'2023-11-18 17:16:35', '2023-11-18 17:16:35'),
(7,3,3,'2023-11-18 17:16:35', '2023-11-18 17:16:35'),
(2,1,2,'2023-11-18 17:16:35', '2023-11-18 17:16:35');
