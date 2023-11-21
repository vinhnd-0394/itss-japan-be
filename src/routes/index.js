const favoriteRouter = require("./favorite.route");
const foodRouter = require("./food.route");
const userRouter = require("./user.route");

const rootRouter = require("express").Router();

rootRouter.use(foodRouter);
rootRouter.use(userRouter);
rootRouter.use(favoriteRouter);

module.exports = rootRouter;
