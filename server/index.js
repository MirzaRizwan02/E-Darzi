
// IMPORTS FROM PACKAGES
const express = require("express");
//const mongoose = require("mongoose");
const bodyparser = require('body-parser');
const jwt = require('jsonwebtoken');
const nodemailer = require('nodemailer');
const mysql = require("mysql");

// IMPORTS FROM OTHER FILES
//const authRouter = require("./routes/auth");

// INIT
const PORT = process.env.PORT || 3000;
const app = express();
//const DB =
//  "mongodb+srv://MirzaRizwan02:MirzaRizwan02@cluster0.dmxxcff.mongodb.net/?retryWrites=true&w=majority";


// CONNECTION 

const connection = mysql.createConnection({
  host: "127.0.0.1",
  user: "root",
  password: "",
  database: "e-darzi"
});

app.use(bodyparser.urlencoded({ extended: false }));
app.use(bodyparser.json());

connection.connect((error) => {
  if (error) {
    console.error("Database connection error: ", error);
    process.exit(1);
  } else {
    console.log("Connected to MySQL database");
  }
});



const authRouter = express.Router();

// SIGNUP API
authRouter.post('/signup', async (req, res) => {
  const { name, email, phone } = req.body;

  const token = jwt.sign({ email: email }, 'your-secret-key');


// NODE MAILER TO GET SIGNUP CONFIRMATION
  const transporter = nodemailer.createTransport({
    service: 'gmail',
    auth: {
      user: 'Your Gmail email address',
      pass: '189417432raffay',
    },
  });

  const mailOptions = {
      from: 'abdul.18277@iqra.edu.pk',
      to: email,
      subject: 'Welcome to E DARZI',
      text: `Dear ${name},\n\nWelcome to E DARZI ! Thank you for Signing up. We are excited to have you on board.\n\nBest regards,\n E DARZI `,
    };

 transporter.sendMail(mailOptions, (error) => {
    if (error) {
      console.error('Failed to send welcome email:', error);
      res.status(500).json({ success: false, message: 'An error occurred during signup. Please try again later.' });
    } else {
      const signupSql = 'INSERT INTO user (name, email, phone) VALUES ( ?, ?, ?)';
      connection.query(signupSql, [name, email, phone], (error, signupResult) => {

        if (error) {
          console.error('Signup error:', error);
          res.status(500).json({ success: false, message: 'An error occurred during signup. Please try again later.' });
        } else {
          const signupId = signupResult.insertId;
          console.log('User signed up successfully. Signup ID:', signupId);

        }

      });
        }
        });


//    }
//  });
});

// SIGNIN API
authRouter.post('/login', (req, res) => {
  const { Email, Password } = req.body;

  const sql = 'SELECT * FROM user WHERE email = ? OR phone = ?';
  connection.query(sql, [email, phone], (error, results) => {
    if (error) {
      console.error('Login error:', error);
      res.status(500).json({ success: false, message: 'An error occurred during login. Please try again later.' });
    } else {
      if (results.length > 0) {
        const user = results[0];

        if (Password === user.Password) {
          console.log('User logged in successfully. User ID:', user.signup_id);
          res.json({ success: true, message: 'Login successful.' });
        } else {
          res.status(401).json({ success: false, message: 'Invalid email or phone number.' });
        }
      } else {
        res.status(401).json({ success: false, message: 'Invalid email or phone number.' });
      }
    }
  });
});


// middleware
app.use(express.json());
app.use(authRouter);


// MONGO DB Connections
//mongoose
//  .connect(DB)
//  .then(() => {
//    console.log("Connection Successful");
//  })
//  .catch((e) => {
//    console.log(e);
//  });

app.listen(PORT, () => {
  console.log(`connected at port ${PORT}`);
});

