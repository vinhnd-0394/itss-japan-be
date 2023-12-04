"use strict";
const { Model } = require("sequelize");
module.exports = (sequelize, DataTypes) => {
  class ErrorReporting extends Model {
    static associate(models) {
    }
  }
  ErrorReporting.init(
    {
      reportContent: DataTypes.STRING,
      createdBy: DataTypes.INTEGER,
    },
    {
      sequelize,
      modelName: "ErrorReportings",
    }
  );
  return ErrorReporting;
};
