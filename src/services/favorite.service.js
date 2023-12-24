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
    console.log("getFavoriteFood", error);
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
    console.log("createFavoriteFood", error);
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
    console.log("deleteFavoriteFood", error);
    throw new BadRequestError(error.message);
  }
};

module.exports = {
  getFavoriteFood,
  createFavoriteFood,
  deleteFavoriteFood,
};
