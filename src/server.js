const express = require("express");
const rootRouter = require("./routes");
const app = express();

app.use("/api/v1", rootRouter);

app.use((req, res, next) => {
  const error = new Error("Not Found");
  error.status = 404;
  next(error);
});

app.use((error, req, res, next) => {
  res.status(error.status || 500).json({
    status: "error",
    message: error.message,
  });
});

app.listen(3000, function () {
  console.log("Example app listening on port 3000!");
});
