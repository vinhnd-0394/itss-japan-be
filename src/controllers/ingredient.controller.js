const ingredientService = require("../services/ingredient.service");

const getAllIngredients = async (req, res) => {
  return res.status(200).json({
    success: true,
    ingredients: await ingredientService.getAllIngredients(),
  });
};

module.exports = {
  getAllIngredients,
};
