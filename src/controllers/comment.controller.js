const commentService = require("./../services/comment.service");

const getComments = async (req, res) => {
  const foodID = req.params.foodID;
  return res.status(200).json({
    success: true,
    comments: await commentService.getCommentsByFoodID(foodID),
  });
};

const createComment = async (req, res) => {
  return res.status(200).json({
    success: true,
    comment: await commentService.createComment(req.body),
  });
};

module.exports = {
  getComments,
  createComment,
};
