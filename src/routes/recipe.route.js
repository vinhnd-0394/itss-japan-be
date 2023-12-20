const recipeRouter = require("express").Router();
const asyncHandler = require("../middlewares/handleError");
const recipeController = require("./../controllers/recipe.controller");
recipeRouter.get("/recipes", asyncHandler(recipeController.getAllRecipes));
recipeRouter.get(
  "/recipes/not-accept",
  asyncHandler(recipeController.getNotAcceptRecipes)
);
recipeRouter.post("/recipes", asyncHandler(recipeController.createRecipe));
recipeRouter.put(
  "/recipes/:id/accept",
  asyncHandler(recipeController.acceptRecipe)
);
recipeRouter.delete(
  "/recipes/:id/not-accept",
  asyncHandler(recipeController.notAcceptRecipe)
);
module.exports = recipeRouter;
