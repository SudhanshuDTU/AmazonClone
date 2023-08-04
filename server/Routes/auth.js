const express = require("express");
const User = require("../models/user");
const AuthRouter = express.Router();

AuthRouter.post("/api/signup", async (req, res) => { 
  try{
    const {name,email,password } = req.body;

    const existingUser = await User.findOne({ email: email });
    if (existingUser) {
      return res
        .status(400)
        .json({ message: "User with same Email Already exists!" });
    }
  
  let user = new User({email,password,name});
  user =await user.save();
  return res.json(user); 
  
  }catch(e){
     return res.status(500).json({error: e.message})
  }
  //get data from client
  //post data in database
  //return data to client
});

module.exports = AuthRouter;
