"use strict";
const { Model } = require("sequelize");
const Food = require("./food");
module.exports = (sequelize, DataTypes) => {
  class FavoriteFood extends Model {
    static associate(models) {
      FavoriteFood.belongsTo(models.Foods, {
        foreignKey: "food_id",
        as: "food",
      });
      FavoriteFood.belongsTo(models.Users, {
        foreignKey: "user_id",
        as: "user",
      });
    }
  }
  FavoriteFood.init(
    {
      user_id: DataTypes.INTEGER,
      food_id: DataTypes.INTEGER,
    },
    {
      sequelize,
      modelName: "FavoriteFood",
    }
  );
  return FavoriteFood;
};
