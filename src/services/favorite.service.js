const { BadRequestError } = require("../core/error.response");
const { FavoriteFood, Foods, Users } = require("../models");

const getFavoriteFood = async (userId) => {
  try {
    const favoriteFoods = await FavoriteFood.findAll({
      where: { user_id: userId },
      include: [
        {
          model: Foods,
          as: "food",
        },
      ],
    });
    return favoriteFoods;
  } catch (error) {
    throw new BadRequestError(error.message);
  }
};

const createFavoriteFood = async (userId, foodId) => {
  try {
    const newFavoriteFood = await FavoriteFood.create({
      user_id: userId,
      food_id: foodId,
    });
    return newFavoriteFood;
  } catch (error) {
    throw new BadRequestError(error.message);
  }
};

module.exports = {
  getFavoriteFood,
  createFavoriteFood,
};
