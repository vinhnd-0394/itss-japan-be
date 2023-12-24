const { BadRequestError } = require("../core/error.response");
const { Ingredients } = require("../models");

const getAllIngredients = async () => {
  try {
    const ingredients = await Ingredients.findAll({
      attributes: { exclude: ["createdAt", "updatedAt"] },
    });
    return ingredients;
  } catch (error) {
    console.log("getAllIngredients", error);
    throw new BadRequestError(error.message);
  }
};

module.exports = {
  getAllIngredients,
};
