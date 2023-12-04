const favoriteRouter = require("./favorite.route");
const foodRouter = require("./food.route");
const ingredientRouter = require("./ingredient.route");
const recipeRouter = require("./recipe.route");
const userRouter = require("./user.route");

const rootRouter = require("express").Router();

rootRouter.use(foodRouter);
rootRouter.use(userRouter);
rootRouter.use(favoriteRouter);
rootRouter.use(recipeRouter);
rootRouter.use(ingredientRouter);

module.exports = rootRouter;
