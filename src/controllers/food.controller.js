const foodService = require("./../services/food.service");

const getAllFood = async (req, res) => {
  return res.status(200).json({
    success: true,
    foods: await foodService.getAllFood(),
  });
};

module.exports = {
  getAllFood,
};
