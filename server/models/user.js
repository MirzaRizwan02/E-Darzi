
//const mongoose = require("mongoose");
const User = require("../routes/auth.js");
const bodyparser = require('body-parser');
const jwt = require('jsonwebtoken');
const nodemailer = require('nodemailer');
const mysql = require("mysql");

const userSchema = mongoose.Schema({
  name: {
    required: true,
    type: String,
    trim: true,
  }, 
  email: {
    required: true,
    type: String,
    trim: true,
    validate: {
//      validator: (value) => {
//        const re =
//          /^(([^<>()[\]\.,;:\s@\"]+(\.[^<>()[\]\.,;:\s@\"]+)*)|(\".+\"))@(([^<>()[\]\.,;:\s@\"]+\.)+[^<>()[\]\.,;:\s@\"]{2,})$/i;
//        return value.match(re);
//      },
      message: "Please enter a valid email address",
    },
  },
  
  phone: {
    required: true,
    type: String,
    trim: true,
     validate: {
       validator: (value) => {
         const re = /^[0-9]{10}$/; // Regex for a 10-digit phone number
         return value.match(re);
       },
       message: "Please enter a valid phone number",
     },
  },
});

const User = mongoose.model("User", userSchema);
module.exports = User;