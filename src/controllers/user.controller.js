const userService = require("./../services/user.service");

const getAllUser = async (req, res) => {
  return res.status(200).json(await userService.getAllUser());
};

module.exports = {
  getAllUser,
};