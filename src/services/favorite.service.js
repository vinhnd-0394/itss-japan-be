const { BadRequestError } = require("../core/error.response");
const { FavoriteFood, Users, Foods } = require("../models");

const getFavoriteFood = async () => {
  try {
    const favoriteFoods = await FavoriteFood.findAll({
      include: [
        {
          model: Users,
          as: "user",
          attributes: { exclude: ["password"] },
        },
        {
          model: Foods,
          as: "food",
        },
      ],
    //   attributes: {exclude: ["user_id", "food_id"]},
    });

    return favoriteFoods;
  } catch (error) {
    throw new BadRequestError(error.message);
  }
};

module.exports = {
  getFavoriteFood,
};
