const { Op } = require("sequelize");
const { BadRequestError } = require("../core/error.response");
const { Foods, Ingredients, IngredientRecipes, Recipes } = require("../models");

const getAllRecipes = async ({ type, ingredient_ids, foodName }) => {
  try {
    const recipes = await Recipes.findAll({
      include: [
        {
          model: IngredientRecipes,
          as: "ingredients",
          include: [
            {
              model: Ingredients,
              as: "ingredient",
              attributes: { exclude: ["createdAt", "updatedAt"] },
            },
          ],
          ...(type && {
            where: {
              type: type,
            },
          }),

          ...(ingredient_ids && {
            where: {
              ingredientID: {
                [Op.in]: ingredient_ids,
              },
            },
          }),
          attributes: { exclude: ["createdAt", "updatedAt", "ingredientID"] },
        },

        {
          model: Foods,
          as: "food",
          ...(foodName && {
            where: {
              foodName: {
                [Op.like]: `%${foodName}%`,
              },
            },
          }),
        },
      ],
      attributes: { exclude: ["foodID"] },
    });

    return recipes;
  } catch (error) {
    throw new BadRequestError(error.message);
  }
};

module.exports = {
  getAllRecipes,
};
