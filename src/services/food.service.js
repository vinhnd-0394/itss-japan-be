const { BadRequestError } = require("../core/error.response");
const {
  Foods,
  Recipes,
  FavoriteFood,
  IngredientRecipes,
  Ingredients,
} = require("../models");

const getAllFood = async () => {
  try {
    const foods = await Foods.findAll({
      // where: {
      //   include: [
      //     {
      //       model: Recipes,
      //       as: "recipe",
      //       where: {
      //         isAccept: 1,
      //       },
      //     },
      //   ],
      // },
      include: [
        {
          model: Recipes,
          as: "recipe",
          attributes: { exclude: ["foodID"] },
          where: {
            isAccept: 1,
          },
        },
        {
          model: FavoriteFood,
          as: "favorite",
        },
      ],
    });
    return foods;
  } catch (error) {
    throw new BadRequestError(error.message);
  }
};

const getFoodDetail = async (foodId) => {
  try {
    const detailFood = await Foods.findByPk(foodId, {
      include: [
        {
          model: Recipes,
          as: "recipe",
          attributes: { exclude: ["foodID"] },
          include: [
            {
              model: IngredientRecipes,
              as: "ingredients",
              attributes: {
                exclude: ["ingredientID", "createdAt", "updatedAt"],
              },
              include: [
                {
                  model: Ingredients,
                  as: "ingredient",
                  attributes: { exclude: ["createdAt", "updatedAt"] },
                },
              ],
            },
          ],
        },
        {
          model: FavoriteFood,
          as: "favorite",
        },
      ],
    });
    return detailFood;
  } catch (error) {
    throw new BadRequestError(error.message);
  }
};

module.exports = {
  getAllFood,
  getFoodDetail,
};
