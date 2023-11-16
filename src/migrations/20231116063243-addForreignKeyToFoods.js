"use strict";

/** @type {import('sequelize-cli').Migration} */
module.exports = {
  async up(queryInterface, Sequelize) {
    await queryInterface.addConstraint("Foods", {
      fields: ["recipeID"],
      type: "foreign key",
      name: "fkey_foods_recipe",
      references: {
        table: "Recipes",
        field: "id",
      },
      onDelete: "CASCADE",
      onUpdate: "CASCADE",
    });
  },

  async down(queryInterface, Sequelize) {
    await queryInterface.removeConstraint("Foods", "fkey_foods_recipe");
  },
};
