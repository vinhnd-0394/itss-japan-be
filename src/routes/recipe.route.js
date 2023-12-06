const recipeRouter = require("express").Router();
const asyncHandler = require("../middlewares/handleError");
const recipeController = require("./../controllers/recipe.controller");
recipeRouter.get("/recipes", asyncHandler(recipeController.getAllRecipes));
recipeRouter.post("/recipes", asyncHandler(recipeController.createRecipe));
module.exports = recipeRouter;
