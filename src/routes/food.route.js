const foodRouter = require("express").Router();
const asyncHandler = require("../middlewares/handleError");
const foodController = require("./../controllers/food.controller");
foodRouter.get("/foods", asyncHandler(foodController.getAllFood));
foodRouter.get("/foods/:foodId", asyncHandler(foodController.getDetailFood));

module.exports = foodRouter;
