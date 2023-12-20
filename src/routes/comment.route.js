const commentRouter = require("express").Router();
const asyncHandler = require("../middlewares/handleError");
const commentController = require("./../controllers/comment.controller");
commentRouter.get(
  "/comments/:foodID",
  asyncHandler(commentController.getComments)
);
commentRouter.post(
  "/comments",
  asyncHandler(commentController.createComment)
);

module.exports = commentRouter;
