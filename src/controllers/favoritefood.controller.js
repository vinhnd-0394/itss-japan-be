const foodService = require("./../services/favorite.service");

const getFavoriteFood = async (req, res) => {
  return res.status(200).json({
    success: true,
    favoriteFoods: await foodService.getFavoriteFood(),
  });
};

module.exports = {
  getFavoriteFood,
};
