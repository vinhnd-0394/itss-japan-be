const favoriteRouter = require("express").Router();
const asyncHandler = require("../middlewares/handleError");
const favoriteController = require("./../controllers/favoritefood.controller");
favoriteRouter.get(
  "/favorites/:userId",
  asyncHandler(favoriteController.getFavoriteFood)
);
favoriteRouter.post(
  "/favorites",
  asyncHandler(favoriteController.createFavoriteFood)
);

module.exports = favoriteRouter;
