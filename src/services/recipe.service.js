const { Op, literal } = require("sequelize");
const { BadRequestError } = require("../core/error.response");
const { Foods, IngredientRecipes, Recipes, Users } = require("../models");

const getAllRecipes = async ({ type, ingredient_ids, foodName }) => {
  try {
    const recipes = await Recipes.findAll({
      where: {
        isAccept: 1,
      },
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

const createRecipe = async ({ recipeName, author, ingredientTags, food }) => {
  try {
    const newFood = await Foods.create({
      foodName: food.foodName,
      foodDescription: food.foodDescription,
    });

    const ingredientStrings = ingredientTags.map(
      (ingredient) => ingredient.ingredientName
    );

    const ingredientsString = ingredientStrings.join(", ");
    const newRecipe = await Recipes.create({
      recipeName: recipeName,
      author: author,
      unknownIngre: ingredientsString,
      foodID: newFood.id,
    });
    newFood.recipeID = newRecipe.id;
    await newFood.save();

    ingredientTags.forEach(async (ingredient) => {
      await IngredientRecipes.create({
        ingredientID: ingredient.id,
        recipeID: newRecipe.id,
      });
    });
    return newRecipe;
  } catch (error) {
    // Xử lý lỗi và trả về response lỗi
    console.error("Error creating recipe:", error);
  }
};

const getNotAcceptRecipes = async () => {
  try {
    const notRecipes = await Recipes.findAll({
      where: {
        isAccept: 0,
      },
      include: [
        {
          model: Users,
          as: "user",
        },
      ],
      attributes: { exclude: ["author"] },
    });

    return notRecipes;
  } catch (error) {
    throw new BadRequestError(error.message);
  }
};

const acceptRecipe = async (recipeId) => {
  try {
    const recipeFound = await Recipes.findOne({
      where: {
        id: recipeId,
      },
    });
    if (recipeFound && !recipeFound.isAccept) {
      recipeFound.isAccept = true;
      await recipeFound.save();
      return recipeFound;
    }
    throw new BadRequestError("Not found");
  } catch (error) {
    throw new BadRequestError(error.message);
  }
};

const notAcceptRecipe = async (recipeId) => {
  try {
    const recipeFound = await Recipes.findOne({
      where: {
        id: recipeId,
      },
    });
    if (recipeFound && !recipeFound.isAccept) {
      const response = await recipeFound.destroy();
      return response;
    }

    throw new BadRequestError("Not found");
  } catch (error) {
    throw new BadRequestError(error.message);
  }
};

module.exports = {
  getAllRecipes,
  createRecipe,
  getNotAcceptRecipes,
  acceptRecipe,
  notAcceptRecipe,
};
