const { BadRequestError } = require("../core/error.response");
const { FavoriteFood, Users, Foods } = require("../models");

const getFavoriteFood = async (userId) => {
  try {
    const favoriteFoods = await FavoriteFood.findAll({
      // where: { user_id: userId },
      include: [
        // {
        //   where: {id: userId},
        //   model: Users,
        //   as: "user",
        //   attributes: { exclude: ["password"] },
        // },
        {
          model: Foods,
          as: "food",
        },
      ],
    //   attributes: {exclude: ["user_id", "food_id"]},
    });
    // const favoriteFoods = await Users.findOne({
    //   where: {id: userId},
    //   include: [
    //     {

    //     }
    //   ]
    // });

    return favoriteFoods;
  } catch (error) {
    throw new BadRequestError(error.message);
  }
};

module.exports = {
  getFavoriteFood,
};
