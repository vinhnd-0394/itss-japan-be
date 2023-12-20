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

const deleteFavoriteFood = async (req, res) => {
  const { id } = req.params;
  return res.status(200).json({
    success: true,
    isDeleted: await foodService.deleteFavoriteFood(id),
  });
};

module.exports = {
  getFavoriteFood,
  createFavoriteFood,
  deleteFavoriteFood,
};
