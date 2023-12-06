const foodService = require("./../services/food.service");

const getAllFood = async (req, res) => {
  return res.status(200).json({
    success: true,
    foods: await foodService.getAllFood(),
  });
};

const getDetailFood = async (req, res) => {
  return res.status(200).json({
    success: true,
    foodDetail: await foodService.getFoodDetail(req.params.foodId),
  });
};
module.exports = {
  getAllFood,
  getDetailFood,
};
