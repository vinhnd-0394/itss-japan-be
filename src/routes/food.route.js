const foodRouter = require("express").Router();
const asyncHandler = require("../middlewares/handleError");
const foodController = require("./../controllers/food.controller");
foodRouter.get("/foods", asyncHandler(foodController.getAllFood));

module.exports = foodRouter;
