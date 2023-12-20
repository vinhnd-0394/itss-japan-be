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

favoriteRouter.delete(
  "/favorites/:id",
  asyncHandler(favoriteController.deleteFavoriteFood)
);

module.exports = favoriteRouter;
