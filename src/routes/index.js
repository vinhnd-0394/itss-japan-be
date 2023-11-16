const foodRouter = require("./food.route");

const rootRouter = require("express").Router();

rootRouter.use(foodRouter);

module.exports = rootRouter;
