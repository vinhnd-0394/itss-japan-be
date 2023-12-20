const recipeService = require("./../services/recipe.service");

const getAllRecipes = async (req, res) => {
  return res.status(200).json({
    success: true,
    recipes: await recipeService.getAllRecipes(req.query),
  });
};

const createRecipe = async (req, res) => {
  console.log(req.body);
  return res.status(200).json({
    success: true,
    recipe: await recipeService.createRecipe(req.body),
  });
};

const getNotAcceptRecipes = async (req, res) => {
  return res.status(200).json({
    success: true,
    recipes: await recipeService.getNotAcceptRecipes(),
  });
};

const acceptRecipe = async (req, res) => {
  const { id } = req.params;
  return res.status(200).json({
    success: true,
    recipe: await recipeService.acceptRecipe(id),
  });
};

const notAcceptRecipe = async (req, res) => {
  const { id } = req.params;
  return res.status(200).json({
    success: true,
    recipeDeleted: await recipeService.notAcceptRecipe(id),
  });
};


module.exports = {
  getAllRecipes,
  createRecipe,
  getNotAcceptRecipes,
  acceptRecipe,
  notAcceptRecipe
};
