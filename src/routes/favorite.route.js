const favoriteRouter = require("express").Router();
const asyncHandler = require("../middlewares/handleError");
const favoriteController = require("./../controllers/favoritefood.controller");
favoriteRouter.get("/favorites", asyncHandler(favoriteController.getFavoriteFood));

module.exports = favoriteRouter;
