const { BadRequestError } = require("../core/error.response");
const { Comment, Foods, Users } = require("../models");

const getCommentsByFoodID = async (foodID) => {
  try {
    const comments = await Comment.findAll({
      where: { food_id: foodID },
      attributes: ["star", "content"],
      include: [
        {
          model: Foods,
          as: "food",
        },
        {
          model: Users,
          as: "user",
        },
      ],
    });
    return comments;
  } catch (error) {
    throw new BadRequestError(error.message);
  }
};

const createComment = async ({ user_id, star, content, food_id }) => {
  try {
    const comment = await Comment.create({
        user_id,
      star,
      content,
      food_id,
    });
    return comment;
  } catch (error) {
    // Xử lý lỗi và trả về response lỗi
    console.error("Error creating recipe:", error);
  }
};

module.exports = {
  getCommentsByFoodID,
  createComment,
};
