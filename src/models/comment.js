"use strict";
const { Model } = require("sequelize");
module.exports = (sequelize, DataTypes) => {
  class Comment extends Model {
    static associate(models) {
      Comment.belongsTo(models.Foods, {
        foreignKey: "food_id",
        as: "food",
      });
      Comment.belongsTo(models.Users, {
        foreignKey: "user_id",
        as: "user",
      });
    }
  }
  Comment.init(
    {
      user_id: DataTypes.INTEGER,
      star: DataTypes.FLOAT,
      content: DataTypes.STRING,
      food_id: DataTypes.INTEGER,
    },
    {
      sequelize,
      modelName: "Comment",
    }
  );
  return Comment;
};
