const { BadRequestError } = require("../core/error.response");
const { FavoriteFood, Foods } = require("../models");

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

const deleteFavoriteFood = async (favoriteFoodId) => {
  try {
    const favoriteFoodFound = await FavoriteFood.destroy({
      where: {
        id: favoriteFoodId,
      },
    });
    return favoriteFoodFound;
  } catch (error) {
    throw new BadRequestError(error.message);
  }
};

module.exports = {
  getFavoriteFood,
  createFavoriteFood,
  deleteFavoriteFood,
};
