"use strict";
const { Model } = require("sequelize");
module.exports = (sequelize, DataTypes) => {
  class Ingredient extends Model {
    static associate(models) {
      Ingredient.hasMany(models.IngredientRecipes, {
        foreignKey: "ingredientID",
        as: "ingredientRecipes",
        });
    }
  }
  Ingredient.init(
    {
      ingredientName: DataTypes.STRING,
    },
    {
      sequelize,
      modelName: "Ingredients",
    }
  );
  return Ingredient;
};
