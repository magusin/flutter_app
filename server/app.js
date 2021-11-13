const express = require("express");
const mongoose = require("mongoose");
// const index = require("./routes");
var cors = require('cors');
// const User = require("./models/user.model");
const bcrypt = require("bcrypt");

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
// app.use(index);

const Schema = mongoose.Schema;

const userSchema = Schema({
  email: String,
  username: String,
  password: String
});

const User = mongoose.model("user", userSchema);

app.post("/api/user", async (req, res, next) => {
  const body = req.body;
  try {
    await new User({
      username: body.username,
      email: body.email,
      password: bcrypt.hashSync(body.password, 10),
    }).save();
    res.status(201).end();
  } catch (e) {
    next(e);
  }
});

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