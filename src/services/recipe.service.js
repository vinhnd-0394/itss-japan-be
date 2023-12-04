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

module.exports = {
  getAllRecipes,
};

// const { Op } = require("sequelize");
// const { BadRequestError } = require("../core/error.response");
// const { Foods, Ingredients, IngredientRecipes, Recipes, Sequelize } = require("../models");

// const getAllRecipes = async ({ type, ingredient_ids, foodName }) => {
//   try {
//     let recipes = [];

//     const recipeQuery = {
//       include: [
//         {
//           model: Foods,
//           as: "food",
//           where: {
//             ...(foodName && {
//               foodName: {
//                 [Op.like]: `%${foodName}%`,
//               },
//             }),
//           },
//         },
//       ],
//       attributes: { exclude: ["foodID"] },
//     };

//     if (ingredient_ids && ingredient_ids.length > 0) {
//       recipeQuery.include.unshift({
//         model: IngredientRecipes,
//         as: "ingredients",
//         include: [
//           {
//             model: Ingredients,
//             as: "ingredient",
//             attributes: [],
//             where: {
//               id: {
//                 [Op.in]: ingredient_ids,
//               },
//             },
//           },
//         ],
//       });
//     }

//     recipes = await Recipes.findAll(recipeQuery);

//     return recipes;
//   } catch (error) {
//     throw new BadRequestError(error.message);
//   }
// };

// module.exports = {
//   getAllRecipes,
// };
