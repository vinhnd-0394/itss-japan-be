const { BadRequestError } = require("../core/error.response");
const {Users} = require("../models");

const getAllUser = async () => {
  try {
    const users = await Users.findAll(); 
    return users;
  } catch (error) {
    throw new BadRequestError(error.message);
  }
};

module.exports = {
  getAllUser,
};
