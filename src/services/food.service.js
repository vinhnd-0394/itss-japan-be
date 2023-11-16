const { BadRequestError } = require("../core/error.response");
const { Foods, Recipes } = require("../models");

const getAllFood = async () => {
  try {
    const foods = await Foods.findAll({
      include: [
        {
          model: Recipes,
          as: "recipe",
          attributes: { exclude: ["foodID"] },
        },
      ],
    });

    return foods;
  } catch (error) {
    throw new BadRequestError(error.message);
  }
};

module.exports = {
  getAllFood,
};
