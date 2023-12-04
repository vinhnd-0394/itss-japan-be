"use strict";
const { Model } = require("sequelize");
module.exports = (sequelize, DataTypes) => {
  class Recipe extends Model {
    static associate(models) {
      Recipe.belongsTo(models.Foods, {
        foreignKey: "id",
        as: "food",
      });

      Recipe.hasMany(models.IngredientRecipes, {
        foreignKey: "recipeID",
        as: "ingredients",
      });
    }
  }

  Recipe.init(
    {
      recipeName: DataTypes.STRING,
      author: DataTypes.INTEGER,
      unknownIngre: DataTypes.STRING,
      foodID: DataTypes.INTEGER,
    },
    {
      sequelize,
      modelName: "Recipes",
    }
  );

  return Recipe;
};
