const { Sequelize } = require("sequelize");

const sequelize = new Sequelize(
  "itss_japan",
  "itss_japan_user",
  "zj5uoXwMcwa0yNCYp0rfUji2UlcRFzsT",
  {
    host: "dpg-cm442kmn7f5s73bt1110-a.singapore-postgres.render.com",
    dialect: "postgres",
    logging: false,
    dialectOptions: {
      ssl: {
        require: true,
        rejectUnauthorized: false,
      },
    },
  }
);

const connectDatabase = async () => {
  try {
    await sequelize.authenticate();
    console.log("Connection has been established successfully.");
  } catch (error) {
    console.error("Unable to connect to the database:", error);
  }
};

module.exports = connectDatabase;
