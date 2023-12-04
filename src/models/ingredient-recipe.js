"use strict";
const { Model } = require("sequelize");
module.exports = (sequelize, DataTypes) => {
  class IngredientRecipe extends Model {
    static associate(models) {
      IngredientRecipe.belongsTo(models.Ingredients, {
        foreignKey: "ingredientID",
        as: "ingredient",
      });
    }
  }
  IngredientRecipe.init(
    {
      recipeID: DataTypes.INTEGER,
      ingredientID: DataTypes.INTEGER,
      quantity: DataTypes.INTEGER,
      type: DataTypes.STRING,
      unit: DataTypes.STRING,
    },
    {
      sequelize,
      modelName: "IngredientRecipes",
    }
  );
  return IngredientRecipe;
};
