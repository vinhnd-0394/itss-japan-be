const { BadRequestError } = require("../core/error.response");
const { Users } = require("../models");

const getAllUser = async () => {
  try {
    const users = await Users.findAll();
    return users;
  } catch (error) {
    console.log("getAllUser", error);
    throw new BadRequestError(error.message);
  }
};

const login = async (username, password) => {
  try {
    const userLogin = await Users.findOne({
      where: { username: username },
    });
    return userLogin;
  } catch (error) {
    console.log("login", error);
    throw new BadRequestError(error.message);
  }
};

module.exports = {
  getAllUser,
  login,
};
