const express = require("express");
const User = require("../models/user");

const authRouter = express.Router();

// SIGN UP
authRouter.post("/api/signup", async (req, res) => {
  try {
    const { name, email, phone } = req.body;

    const existingUser = await User.findOne({ email });
    if (existingUser) {
      return res
        .status(400)
        .json({ msg: "User with same email already exists!" });
    }

    let user = new User({
      name,
      email,
      phone,
    });
    user = await user.save();
    res.json(user);
  } catch (e) {
    res.status(500).json({ error: e.message });
  }
});

// Sign In Route
// Exercise
authRouter.post("/api/signin", async (req, res) => {
  try {
    const { number } = req.body;

    const user = await User.findOne({ number });
    if (!user) {
      return res
        .status(400)
        .json({ msg: "User with this email does not exist!" });
    }

  } catch (e) {
    res.status(500).json({ error: e.message });
  }
});

// authRouter.post("/tokenIsValid", async (req, res) => {
//   try {
//     const token = req.header("x-auth-token");
//     if (!token) return res.json(false);
//     const verified = jwt.verify(token, "passwordKey");
//     if (!verified) return res.json(false);

//     const user = await User.findById(verified.id);
//     if (!user) return res.json(false);
//     res.json(true);
//   } catch (e) {
//     res.status(500).json({ error: e.message });
//   }
// });

// // get user data
// authRouter.get("/", auth, async (req, res) => {
//   const user = await User.findById(req.user);
//   res.json({ ...user._doc, token: req.token });
// });

module.exports = authRouter;