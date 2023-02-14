
const express = require("express");
const User = require("../models/user");
const bcryptjs = require("bcryptjs");
const authRouter = express.Router();
const jwt = require("jsonwebtoken");
const auth = require("../middlewares/auth");
const asynchandler = require('express-async-handler');

const setUserType = asynchandler(async (req, res) => {

  try {
    let updateStype = await User.updateOne({ _id: req.user }, {$set:{ type: req.body.type }})
    if (updateStype) {
      let user = await User.findOne({ _id: req.user });
      res.status(200).json(
        {
         // ...user._doc,
          status: true,
          message: 'user data',
          data: user
        });
    } else {
      res.status(400).json({
        status: false,
        message: 'database error'
      })
    }
  } catch (e) {
    res.status(403).json({
      status: false,
      message: 'server error'
    })
  }

});

const signup = async (req, res) => {
  try {
    const { name, email, password } = req.body;

    const existingUser = await User.findOne({ email });
    if (existingUser) {
      return res
        .status(400)
        .json({ msg: "User with same email already exists!" });
    }

    const hashedPassword = await bcryptjs.hash(password, 8);

    let user = new User({
      email,
      password: hashedPassword,
      name,
    });
    user = await user.save();
    const token = jwt.sign({ id: user._id }, "passwordKey");
    res.json(user,token);
  } catch (e) {
    res.status(500).json({ error: e.message });
  }
}

const signin = async (req, res) => {
  try {
    const { email, password } = req.body;

    const user = await User.findOne({ email });
    if (!user) {
      return res
        .status(400)
        .json({ msg: "User with this email does not exist!" });
    }

    const isMatch = await bcryptjs.compare(password, user.password);
    if (!isMatch) {
      return res.status(400).json({ msg: "Incorrect password." });
    }
    res.json({  ...user._doc });
  } catch (e) {
    res.status(500).json({ error: e.message });
  }
}

module.exports = {
  signin,
signup,
  setUserType,

};
