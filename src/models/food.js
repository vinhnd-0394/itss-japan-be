"use strict";
const { Model } = require("sequelize");
module.exports = (sequelize, DataTypes) => {
  class Food extends Model {
    static associate(models) {
      Food.hasOne(models.Recipes, {
        foreignKey: "id",
        as: "recipe",
      });
      Food.hasMany(models.FavoriteFood, {
        foreignKey: "food_id",
        as: "favorite",
      });
    }
  }
  Food.init(
    {
      foodName: DataTypes.STRING,
      foodDescription: DataTypes.STRING,
    },
    {
      sequelize,
      modelName: "Foods",
    }
  );
  return Food;
};
