const foodService = require("./../services/favorite.service");

const getFavoriteFood = async (req, res) => {
  const userId = req.params.userId;
  return res.status(200).json({
    success: true,
    favoriteFoods: await foodService.getFavoriteFood(userId),
  });
};

const createFavoriteFood = async (req, res) => {
  const { userId, foodId } = req.body;
  return res.status(200).json({
    success: true,
    favoriteFoods: await foodService.createFavoriteFood(userId, foodId),
  });
};

module.exports = {
  getFavoriteFood,
  createFavoriteFood
};
