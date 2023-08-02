const express = require("express");
const User = require("../models/user");
const AuthRouter = express.Router();

AuthRouter.post("/api/signup", async (req, res) => {
  const { name, email, password } = req.body;

  const existingUser = await User.findOne({ email: email });
  if (existingUser){
    return res
      .status(400)
      .json({ message: "User with same Email Already exists!" });
}

  //get data from client
  //post data in database
  //return data to client
});

module.exports = AuthRouter;
