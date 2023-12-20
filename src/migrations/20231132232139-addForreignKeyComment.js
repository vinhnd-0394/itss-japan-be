"use strict";

/** @type {import('sequelize-cli').Migration} */
module.exports = {
  async up(queryInterface, Sequelize) {
    await queryInterface.addConstraint("Comments", {
      fields: ["food_id"],
      type: "foreign key",
      name: "fkey_foods_comment",
      references: {
        table: "Foods",
        field: "id",
      },
      onDelete: "CASCADE",
      onUpdate: "CASCADE",
    });
    await queryInterface.addConstraint("Comments", {
      fields: ["user_id"],
      type: "foreign key",
      name: "fkey_users_comment",
      references: {
        table: "Users",
        field: "id",
      },
      onDelete: "CASCADE",
      onUpdate: "CASCADE",
    });
  },

  async down(queryInterface, Sequelize) {
    await queryInterface.removeConstraint("Comments", "fkey_foods_comment");
    await queryInterface.removeConstraint("Comments", "fkey_users_comment");
  },
};
