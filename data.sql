USE `itss-japan`;

-- Insert users

INSERT INTO Users (id, displayName, username, email, password, isAdmin, createdAt, updatedAt) VALUES
(1, 'Nguyet', 'NguyetLe', 'nguyetle@gmail.com', '123456', 0, '2023-11-18 17:16:35', '2023-11-18 17:16:35'),
(2, 'Vinh', 'DuyVinh', 'vinh@gmail.com', '123456', 1, '2023-11-18 17:17:23', '2023-11-18 17:17:23'),
(3, 'Thai', 'ThaiDui', 'thai@gmail.com', '123456', 0, '2023-11-18 17:16:35', '2023-11-18 17:16:35');

INSERT INTO Recipes (recipeName, author, unknownIngre, foodID, createdAt, updatedAt, isAccept)
VALUES
  ('Công thức Bún chả', 1, 'Nước mắm, nước dùng cay, bún, thịt nướng', 1, CURRENT_TIMESTAMP, CURRENT_TIMESTAMP, 1),
  ('Công thức Phở gà', 1, 'Ginger, cinnamon, cardamom, star anise, cloves', 2, CURRENT_TIMESTAMP, CURRENT_TIMESTAMP, 1),
  ('Công thức Cơm niêu cá basa', 1, 'Cá basa, nước mắm, gạo, mỡ hành', 3, CURRENT_TIMESTAMP, CURRENT_TIMESTAMP, 1),
  ('Công thức Bánh mì bơ tỏi', 1, 'Bánh mì, bơ, tỏi, pate, rau sống', 4, CURRENT_TIMESTAMP, CURRENT_TIMESTAMP, 1),
  ('Công thức Gỏi cuốn tôm thịt', 1, 'Tôm, thịt, bún, rau sống, nước mắm', 5, CURRENT_TIMESTAMP, CURRENT_TIMESTAMP, 1),
  ('Công thức Bún riêu cua', 1, 'Bún, cua, cà chua, bún, hành lá', 6, CURRENT_TIMESTAMP, CURRENT_TIMESTAMP, 1),
  ('Công thức Mì quảng', 3, 'Miến, tôm, thịt, bánh tráng, nước mắm', 7, CURRENT_TIMESTAMP, CURRENT_TIMESTAMP, 1),
  ('Công thức Cơm gà xé nước mắm', 3, 'Gà, cơm, nước mắm, hành lá, gia vị', 8, CURRENT_TIMESTAMP, CURRENT_TIMESTAMP, 1),
  ('Công thức Bánh mì chảo trứng', 3, 'Bánh mì, trứng, mayonnaise, gia vị', 9, CURRENT_TIMESTAMP, CURRENT_TIMESTAMP, 1),
  ('Công thức Lẩu cá diêu hồng', 3, 'Cá diêu hồng, nước lẩu, rau sống, gia vị', 10, CURRENT_TIMESTAMP, CURRENT_TIMESTAMP, 1),
  ('Thịt heo kho xả ớt', 1, 'dầu điều, nước màu', 11,  CURRENT_TIMESTAMP, CURRENT_TIMESTAMP, 1),
  ('Cá mối khô chiên đường', 2, 'cá mối, dầu ăn', 12, CURRENT_TIMESTAMP, CURRENT_TIMESTAMP, 1),
  ('Cà tím xào tôm thịt', 3, 'cà tím', 13, CURRENT_TIMESTAMP, CURRENT_TIMESTAMP, 1),
  ('Canh sườn hầm củ sen', 3, 'sườn heo, củ sen, hành lá', 14,  CURRENT_TIMESTAMP, CURRENT_TIMESTAMP, 0),
  ('Cá mú nướng sa tế cay', 3, 'cá mú, sa tế, ớt khô, dầu hào, tương ớt', 15,  CURRENT_TIMESTAMP, CURRENT_TIMESTAMP, 0),
  ('Nem nướng chay từ bột mì', 1, 'heo lát chay, bột khoai, bột mì, hạt nêm chạy, bột quế, mè rang', 16, CURRENT_TIMESTAMP, CURRENT_TIMESTAMP, 0);

-- INSERT INTO Recipes (recipeName, author, unknownIngre, foodID, createdAt, updatedAt, isAccept)
-- VALUES ('Canh sườn hầm củ sen', 3, 'sườn heo, củ sen, hành lá', 19,  CURRENT_TIMESTAMP, CURRENT_TIMESTAMP, 0),
--   ('Cá mú nướng sa tế cay', 3, 'cá mú, sa tế, ớt khô, dầu hào, tương ớt', 20,  CURRENT_TIMESTAMP, CURRENT_TIMESTAMP, 0),
--   ('Nem nướng chay từ bột mì', 1, 'heo lát chay, bột khoai, bột mì, hạt nêm chạy, bột quế, mè rang', 21, CURRENT_TIMESTAMP, CURRENT_TIMESTAMP, 0);


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

INSERT INTO Foods (foodName, foodDescription, recipeID)
VALUES
  ('Thịt heo kho xả ớt', 'Thịt heo là nguyên liệu thường xuất hiện nhiều nhất trong các bữa cơm gia đình. Và trong số đó không thể nào thiếu được món thịt heo kho sả ớt. Thịt heo kho xong có màu nâu trong rất đẹp, thấm đều gia vị, dậy lên mùi sả ớt cay nồng chắc chắn bạn sẽ ăn nhi', 11),
  ('Cá mối khô chiên đường', ' món cá bạc má chiên giấm độc lạ, ngon ngất ngây mà nhất định phải chia sẻ cho các bạn. Chúng ta cùng vào bếp trổ tài món ăn này nhé.',12),
  ('Cà tím xào tôm thịt', 'Nếu bạn đang tìm một món xào đổi vị nhưng vẫn đảm bảo sự thơm ngon cho bữa cơm thêm phong phú thì hay tham khảo ngay cách làm cà tím xào tôm thịt đậm đà ngay sau đây nhé.', 13),
  ('Canh sườn hầm củ sen', 'canh sườn hầm củ sen thơm ngon, bổ dưỡng, tốt cho sức khỏe. Món ăn này trong top 15 món canh sườn ngon ngọt, dễ nấu mà bất kỳ ai cũng làm được. Chúng ta cùng thực hiện ngay món ăn này luôn nhé.',14),
  ('Cá mú nướng sa tế', 'Cuối tuần này bạn đang không biết làm gì để chiêu đãi cả nhà hoặc rủ hội bạn thân tới mở party thì hay tham khảo ngay cá mú nướng sa tế cay cay, thơm lừng. ', 15),
  ('Nem nướng chay', 'Vào những ngày rằm phải ăn chay nhưng bạn muốn thay đổi khẩu vị cho gia đình bằng một món nướng để thêm phong phú và ăn không bị ngán thì hay tham khảo ngay món nem nướng chay nha. Đây là món thuần chay nhưng lại ngon và giàu dinh dưỡng lắm đấy.', 16);



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

INSERT INTO Ingredients (ingredientName, createdAt, updatedAt)
VALUES
  ('Thịt lợn', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP),
  ('Xả',  CURRENT_TIMESTAMP, CURRENT_TIMESTAMP),
  ('Hành tím',  CURRENT_TIMESTAMP, CURRENT_TIMESTAMP),
  ('Đường',  CURRENT_TIMESTAMP, CURRENT_TIMESTAMP),
  ('Muối',  CURRENT_TIMESTAMP, CURRENT_TIMESTAMP),
  ('Hạt nêm',  CURRENT_TIMESTAMP, CURRENT_TIMESTAMP),
  ('Tiêu',  CURRENT_TIMESTAMP, CURRENT_TIMESTAMP),
  ( 'Bột ngọt',  CURRENT_TIMESTAMP, CURRENT_TIMESTAMP),
  ( 'Cá mối',  CURRENT_TIMESTAMP, CURRENT_TIMESTAMP),
  ( 'Dầu ăn',  CURRENT_TIMESTAMP, CURRENT_TIMESTAMP),
  ( 'Cà tím',  CURRENT_TIMESTAMP, CURRENT_TIMESTAMP),
  ( 'Tôm sú',  CURRENT_TIMESTAMP, CURRENT_TIMESTAMP),
  ( 'Thịt ba chỉ',  CURRENT_TIMESTAMP, CURRENT_TIMESTAMP),
  ( 'Cà chua bi',  CURRENT_TIMESTAMP, CURRENT_TIMESTAMP),
  ( 'Rau tía tô',  CURRENT_TIMESTAMP, CURRENT_TIMESTAMP),
  ( 'Lá lốt',  CURRENT_TIMESTAMP, CURRENT_TIMESTAMP),
  ( 'Sườn heo', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP),
  ( 'Củ sen',  CURRENT_TIMESTAMP, CURRENT_TIMESTAMP),
  ( 'Hành lá',  CURRENT_TIMESTAMP, CURRENT_TIMESTAMP),
  ( 'Cá mú',  CURRENT_TIMESTAMP, CURRENT_TIMESTAMP),
  ( 'Sa tế',  CURRENT_TIMESTAMP, CURRENT_TIMESTAMP),
  ( 'Ớt khô',  CURRENT_TIMESTAMP, CURRENT_TIMESTAMP),
  ( 'Dầu hào',  CURRENT_TIMESTAMP, CURRENT_TIMESTAMP),
  ( 'Tương ớt',  CURRENT_TIMESTAMP, CURRENT_TIMESTAMP),
  ( 'Heo lát chay',  CURRENT_TIMESTAMP, CURRENT_TIMESTAMP),
  ( 'Bột khoai',  CURRENT_TIMESTAMP, CURRENT_TIMESTAMP),
  ( 'Bột mì',  CURRENT_TIMESTAMP, CURRENT_TIMESTAMP),
  ( 'Bột quế',  CURRENT_TIMESTAMP, CURRENT_TIMESTAMP),
  ( 'Mè rang',  CURRENT_TIMESTAMP, CURRENT_TIMESTAMP);


-- Dữ liệu cho công thức Thịt heo kho xả ớt
INSERT INTO IngredientRecipes (recipeID, ingredientID, quantity, unit, type, createdAt, updatedAt)
VALUES
(11, 47, 200, 'gram', 'Nguyên liệu', '2023-12-06 08:24:15', '2023-12-06 08:24:15'),
(11, 49, 2, 'cây', 'Nguyên liệu', '2023-12-06 08:24:15', '2023-12-06 08:24:15'),
(11, 50, 1, 'củ', 'Nguyên liệu', '2023-12-06 08:24:15', '2023-12-06 08:24:15'),
(11, 36, 100, 'gram', 'Nguyên liệu', '2023-12-06 08:24:15', '2023-12-06 08:24:15'),
(11, 51, 100, 'gram', 'Nguyên liệu', '2023-12-06 08:24:15', '2023-12-06 08:24:15'),
(11, 54, 1, 'thìa', 'Nguyên liệu', '2023-12-06 08:24:15', '2023-12-06 08:24:15');

-- Dữ liệu cho công thức Cá mối khô chiên đường
INSERT INTO IngredientRecipes (recipeID, ingredientID, quantity, unit, type, createdAt, updatedAt)
VALUES
(12, 56, 2, 'con', 'Nguyên liệu', '2023-12-06 08:43:50', '2023-12-06 08:43:50'),
(12, 51, 100, 'gram', 'Nguyên liệu', '2023-12-06 08:43:50', '2023-12-06 08:43:50'),
(12, 57, 1, 'muỗng', 'Nguyên liệu', '2023-12-06 08:43:50', '2023-12-06 08:43:50'),
(12, 52, 100, 'gram', 'Nguyên liệu', '2023-12-06 08:43:50', '2023-12-06 08:43:50');

-- Dữ liệu cho công thức Cà tím xào tôm thịt
INSERT INTO IngredientRecipes (recipeID, ingredientID, quantity, unit, type, createdAt, updatedAt)
VALUES
(13, 58, 200, 'gram', 'Nguyên liệu', '2023-12-06 08:43:50', '2023-12-06 08:43:50'),
(13, 71, 200, 'gram', 'Nguyên liệu', '2023-12-06 08:43:50', '2023-12-06 08:43:50'),
(13, 60, 100, 'gram', 'Nguyên liệu', '2023-12-06 08:43:50', '2023-12-06 08:43:50'),
(13, 61, 150, 'gram', 'Nguyên liệu', '2023-12-06 08:43:50', '2023-12-06 08:43:50'),
(13, 57, 1, 'muỗng', 'Nguyên liệu', '2023-12-06 08:43:50', '2023-12-06 08:43:50'),
(13, 53, 2, 'muỗng', 'Nguyên liệu', '2023-12-06 08:43:50', '2023-12-06 08:43:50'),
(13, 55, 1, 'muỗng', 'Nguyên liệu', '2023-12-06 08:43:50', '2023-12-06 08:43:50');

-- Dữ liệu cho công thức Canh sườn hầm củ sen
INSERT INTO IngredientRecipes (recipeID, ingredientID, quantity, unit, type, createdAt, updatedAt)
VALUES
(14, 64, 300, 'gram', 'Nguyên liệu', '2023-12-06 08:43:50', '2023-12-06 08:43:50'),
(14, 65, 1, 'củ', 'Nguyên liệu', '2023-12-06 08:43:50', '2023-12-06 08:43:50'),
(14, 28, 5, 'nhánh', 'Nguyên liệu', '2023-12-06 08:43:50', '2023-12-06 08:43:50'),
(14, 50, 4, 'củ', 'Nguyên liệu', '2023-12-06 08:43:50', '2023-12-06 08:43:50'),
(14, 23, 2, 'muỗng', 'Nguyên liệu', '2023-12-06 08:43:50', '2023-12-06 08:43:50'),
(14, 57, 2, 'muỗng', 'Nguyên liệu', '2023-12-06 08:43:50', '2023-12-06 08:43:50');

-- Dữ liệu cho công thức Cá mú nướng sa tế cay
INSERT INTO IngredientRecipes (recipeID, ingredientID, quantity, unit, type, createdAt, updatedAt)
VALUES
(15, 67, 1, 'con', 'Nguyên liệu', '2023-12-06 08:43:50', '2023-12-06 08:43:50'),
(15, 68, 4, 'muỗng', 'Nguyên liệu', '2023-12-06 08:43:50', '2023-12-06 08:43:50'),
(15, 70, 1, 'muỗng', 'Nguyên liệu', '2023-12-06 08:43:50', '2023-12-06 08:43:50'),
(15, 71, 1, 'muỗng', 'Nguyên liệu', '2023-12-06 08:43:50', '2023-12-06 08:43:50'),
(15, 69, 1, 'muỗng', 'Nguyên liệu', '2023-12-06 08:43:50', '2023-12-06 08:43:50');

-- Dữ liệu cho công thức Nem nướng chay
INSERT INTO IngredientRecipes (recipeID, ingredientID, quantity, unit, type, createdAt, updatedAt)
VALUES
(16, 72, 20, 'gram', 'Nguyên liệu', '2023-12-06 09:20:51', '2023-12-06 09:20:51'),
(16, 73, 15, 'cọng', 'Nguyên liệu', '2023-12-06 09:20:51', '2023-12-06 09:20:51'),
(16, 74, 50, 'gram', 'Nguyên liệu', '2023-12-06 09:20:51', '2023-12-06 09:20:51'),
(16, 75, 1, 'muỗng', 'Nguyên liệu', '2023-12-06 09:20:51', '2023-12-06 09:20:51'),
-- (16, 76, 1, 'muỗng', 'Nguyên liệu', '2023-12-06 09:20:51', '2023-12-06 09:20:51'),
(16, 51, 1, 'muỗng', 'Nguyên liệu', '2023-12-06 09:20:51', '2023-12-06 09:20:51');

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
  (2, 1, 1, 'con', 'Nguyên liệu', '2023-11-18 17:16:35', '2023-11-18 17:16:35'),
  (2, 2, 2, 'lọ', 'Nguyên liệu', '2023-11-18 17:16:35', '2023-11-18 17:16:35'),
  (2, 3, 200, 'gram', 'Nguyên liệu', '2023-11-18 17:16:35', '2023-11-18 17:16:35'),
  (2, 4, 300, 'gram', 'Nguyên liệu', '2023-11-18 17:16:35', '2023-11-18 17:16:35'),
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

SELECT * FROM `itss-japan`.Recipes;
SELECT * FROM `itss-japan`.Foods;
SELECT * FROM `itss-japan`.IngredientRecipes;

-- Insert comments
INSERT INTO Comments (`user_id`, content, star, `food_id`, `createdAt`, `updatedAt`)
VALUES
    (1, 'Wow, món này thực sự ngon! Mình đã gặp một người bạn ở đây và chúng tôi đã có một bữa tối tuyệt vời.', 5, 5, NOW(), NOW()),
    (2, 'Khám phá một quán ăn mới và cảm thấy thích thú. Mọi người nên thử món số 8, nó là một trải nghiệm hoàn toàn mới!', 4, 8, NOW(), NOW()),
    (3, 'Mình đã mang theo gia đình đến đây và mọi người đều thích. Dịch vụ tốt và không gian thoải mái.', 5, 2, NOW(), NOW()),
    (1, 'Bình luận này đến từ một đầu bếp tự nấu. Món này có vẻ ngon, nhưng mình có thể tự làm ngon hơn ở nhà!', 3, 9, NOW(), NOW()),
    (2, 'Điều duy nhất làm tôi hối hận là tại sao mình không biết đến đây sớm hơn. Mình sẽ quay lại nhiều lần nữa!', 4, 3, NOW(), NOW()),
    (3, 'Một trải nghiệm ẩm thực đặc sắc. Mình đã thử nhiều món ở đây và đều rất ngon miệng!', 5, 7, NOW(), NOW()),
    (1, 'Mình không thể tin nổi mắt mình khi thấy menu. Quá nhiều lựa chọn tuyệt vời!', 5, 1, NOW(), NOW()),
    (2, 'Hôm nay là ngày sinh nhật của mình, và tôi đã chọn đến đây để ăn mừng. Điều tuyệt vời nhất là bữa tặng surprise từ nhân viên!', 5, 4, NOW(), NOW()),
    (3, 'Nhớ kỹ tên món: "Hương vị quê hương". Thực sự đúng như tên gọi, khiến mình nhớ về những ngày trở về quê hương.', 4, 10, NOW(), NOW()),
    (1, 'Mình là một người ưa ẩm thực và đây là một trong những quán phải thử. Không thất vọng chút nào!', 5, 5, NOW(), NOW()),
    (1, 'Khám phá một quán ăn mới và cảm thấy thích thú. Mọi người nên thử món số 8, nó là một trải nghiệm hoàn toàn mới!', 4, 5, NOW(), NOW()),
    (2, 'Khám phá một quán ăn mới và cảm thấy thích thú. Mọi người nên thử món số 8, nó là một trải nghiệm hoàn toàn mới!', 4, 5, NOW(), NOW())
    ;
