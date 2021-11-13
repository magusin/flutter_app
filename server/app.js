const express = require("express");
const mongoose = require("mongoose");
const index = require("./routes");
var cors = require('cors');

mongoose.connect(
  "mongodb+srv://fanatsy:1991@cluster0.i1na8.mongodb.net/flutter?retryWrites=true&w=majority",
  (err) => {
    if (err) {
      console.log("ERROR DB");
    } else {
      console.log("CONNEXION DB OK !");
    }
  }
);

const app = express();

app.use(express.json());
app.use(express.urlencoded({ extended: false }));
app.use(cors());
app.use(index);

app.all("*", (req, res) => {
  res.status(404).json("not-found");
});

app.use((err, req, res, next) => {
  console.log(err);
  res.locals.message = err.message;
  res.locals.error = req.app.get("env") === "development" ? err : {};

  res.status(err.status || 500);
  res.json("error");
});

// var corsOptions = {
//  origin: *,
//  optionsSuccessStatus: 200 // some legacy browsers (IE11, various SmartTVs) choke on 204
// }

module.exports = app;