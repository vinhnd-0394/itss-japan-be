const ingredientRouter = require("express").Router();
const ingredientController = require("../controllers/ingredient.controller");
const asyncHandler = require("../middlewares/handleError");
ingredientRouter.get(
  "/ingredients",
  asyncHandler(ingredientController.getAllIngredients)
);

module.exports = ingredientRouter;
