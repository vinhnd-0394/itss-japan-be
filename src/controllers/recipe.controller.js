const recipeService = require("./../services/recipe.service");

const getAllRecipes = async (req, res) => {
  return res.status(200).json({
    success: true,
    recipes: await recipeService.getAllRecipes(req.query),
  });
};

module.exports = {
  getAllRecipes,
};
