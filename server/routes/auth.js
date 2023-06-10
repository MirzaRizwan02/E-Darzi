const express = require("express");
const bodyparser = require('body-parser');
//const jwt = require('jsonwebtoken');
//const nodemailer = require('nodemailer');
const mysql = require("mysql");


const authRouter = express.Router();

authRouter.post('/signup', (req, res) => {
  const { name, email, phone } = req.body;

//    const token = jwt.sign({ email: email }, 'your-secret-key');

//  const transporter = nodemailer.createTransport({
//    service: 'gmail',
//    auth: {
//      user: 'abdul.18277@iqra.edu.pk',
//      pass: '189417432raffay',
//    },
//  });

//  const mailOptions = {
//    from: 'abdul.18277@iqra.edu.pk',
//    to: email,
//    subject: 'Welcome to E DARZI',
//    text: `Dear ${name},\n\nWelcome to E DARZI! Thank you for signing up. We are excited to have you on board.\n\nBest regards,\nAi Recipe Buddy `,
//  };

//  transporter.sendMail(mailOptions, (error) => {
//   if (email) {
//     console.error('No recipient email address defined');
//     res.status(400).json({ success: false, message: 'Recipient email address is required.' });
//
//   }
//   else {
      const signupSql = 'INSERT INTO user (name, email, phone) VALUES (?, ?, ?)';
      connection.query(signupSql, [name, email, phone], (error, signupResult) => {
        if (error) {
          console.error('Signup error:', error);
          res.status(500).json({ success: false, message: 'An error occurred during signup. Please try again later.' });
        } else {
          const signupId = signupResult.insertId;
          console.log('User signed up successfully. Signup ID:', signupId);

        }
      });
//    }
//  });
});


const express = require("express");
const bodyparser = require('body-parser');
const mysql = require("mysql");

const authRouter = express.Router();

// Create a MySQL connection
const connection = mysql.createConnection({
  host: 'localhost',
  user: 'root',
  password: '',
  database: 'edarzi',
});

// Connect to the database
connection.connect((error) => {
  if (error) {
    console.error('Database connection error:', error);
  } else {
    console.log('Connected to the database');
  }
});

authRouter.post('/signup', (req, res) => {
  const { name, email, phone } = req.body;

  const signupSql = 'INSERT INTO user (name, email, phone) VALUES (?, ?, ?)';
  connection.query(signupSql, [name, email, phone], (error, signupResult) => {
    if (error) {
      console.error('Signup error:', error);
      res.status(500).json({ success: false, message: 'An error occurred during signup. Please try again later.' });
    } else {
      const signupId = signupResult.insertId;
      console.log('User signed up successfully. Signup ID:', signupId);
      res.status(200).json({ success: true, message: 'Signup successful. Welcome email sent!' });
    }
  });
});

module.exports = authRouter;






// SIGN UP
//authRouter.post("/api/signup", async (req, res) => {
//  try {
//    const { name, email, phone } = req.body;
//
    const existingPhone = await User.findOne({ phone });
    const existingEmail = await User.findOne({ email });

    if (existingEmail) {
      return res
        .status(400)
        .json({ msg: "User with same email already exists!" });
    }
    if (existingPhone) {
      return res
        .status(400)
        .json({ msg:"User with same Phone Number already exists!" });
    }

    let user = new User({
      name,
      email,
      phone,
    });
//
//    user = await user.save();
//    res.json(user);
//  } catch (e) {
//    res.status(500).json({ error: e.message });
//  }
//});

// Sign In Route
// Exercise

//authRouter.post("/api/signin", async (req, res) => {
//  try {
//    const { number } = req.body;
//
//    const user = await User.findOne({ number });
//    if (!user) {
//      return res
//        .status(400)
//        .json({ msg: "User with this email does not exist!" });
//    }
//
//  } catch (e) {
//    res.status(500).json({ error: e.message });
//  }
//});

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