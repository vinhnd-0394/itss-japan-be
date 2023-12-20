"use strict";

/** @type {import('sequelize-cli').Migration} */
module.exports = {
  async up(queryInterface, Sequelize) {
    await queryInterface.addConstraint("Recipes", {
      fields: ["author"],
      type: "foreign key",
      name: "fkey_author_recipes",
      references: {
        table: "Users",
        field: "id",
      },
      onDelete: "CASCADE",
      onUpdate: "CASCADE",
    });
  },

  async down(queryInterface, Sequelize) {
    await queryInterface.removeConstraint("Recipes", "fkey_author_recipes");
  },
};
