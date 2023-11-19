const foodRouter = require("./food.route");
const userRouter = require("./user.route");

const rootRouter = require("express").Router();

rootRouter.use(foodRouter);
rootRouter.use(userRouter);

module.exports = rootRouter;
