const { BadRequestError } = require("../core/error.response");
const { FavoriteFood, Users, Foods } = require("../models");

const getFavoriteFood = async (userId) => {
  try {
    const favoriteFoods = await FavoriteFood.findAll({
      where: { user_id: userId },
        include: {
          model: Foods,
          as: "food",
        },
    });
    return favoriteFoods;
  } catch (error) {
    throw new BadRequestError(error.message);
  }
};

module.exports = {
  getFavoriteFood,
};
