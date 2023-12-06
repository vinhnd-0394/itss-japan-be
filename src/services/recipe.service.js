const { Op, literal } = require("sequelize");
const { BadRequestError } = require("../core/error.response");
const { Foods, IngredientRecipes, Recipes } = require("../models");

const getAllRecipes = async ({ type, ingredient_ids, foodName }) => {
  try {
    const recipes = await Recipes.findAll({
      include: [
        {
          model: IngredientRecipes,
          as: "ingredients",
          ...(ingredient_ids && {
            where: literal(`
            EXISTS (
              SELECT 1
              FROM IngredientRecipes AS ir
              WHERE ir.recipeID = Recipes.id
              AND ir.ingredientID IN (${ingredient_ids.join(",")})
              GROUP BY ir.recipeID
              HAVING COUNT(DISTINCT ir.ingredientID) = ${ingredient_ids.length}
            )
          `),
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

const createRecipe = async ({ recipeName, author, unknownIngre, foodID }) => {
  try {
    const newRecipe = await Recipes.create({
      recipeName,
      author,
      unknownIngre,
      foodID,
    });
    return newRecipe;
  } catch (error) {
    // Xử lý lỗi và trả về response lỗi
    console.error("Error creating recipe:", error);
  }
};
module.exports = {
  getAllRecipes,
  createRecipe,
};
