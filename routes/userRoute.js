const express = require("express");
const router = express.Router();

const controllers = require(appRoot + "/controllers");

//API to login
router.post("/login", controllers.userController.login);

//API to Sign Up
router.post("/signup", controllers.userController.signup);

module.exports = router;