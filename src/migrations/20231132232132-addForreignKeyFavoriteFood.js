"use strict";

/** @type {import('sequelize-cli').Migration} */
module.exports = {
  async up(queryInterface, Sequelize) {
    await queryInterface.addConstraint("FavoriteFoods", {
      fields: ["food_id"],
      type: "foreign key",
      name: "fkey_foods_favorite",
      references: {
        table: "Foods",
        field: "id",
      },
      onDelete: "CASCADE",
      onUpdate: "CASCADE",
    });
    await queryInterface.addConstraint("FavoriteFoods", {
      fields: ["user_id"],
      type: "foreign key",
      name: "fkey_users_favorite",
      references: {
        table: "Users",
        field: "id",
      },
      onDelete: "CASCADE",
      onUpdate: "CASCADE",
    });
  },

  async down(queryInterface, Sequelize) {
    await queryInterface.removeConstraint("FavoriteFoods", "fkey_foods_favorite");
    await queryInterface.removeConstraint("FavoriteFoods", "fkey_users_favorite");
  },
};
