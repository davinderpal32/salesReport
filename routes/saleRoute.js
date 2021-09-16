const express = require("express");
const router = express.Router();
const Libs = require(appRoot + "/libs");

const controllers = require(appRoot + "/controllers");

//API to add data into sales table
router.post("/addSale", [Libs.middleware.loginInRequired], controllers.saleController.addSale);

//API to fetch stats from the sales
router.get("/salesReport", [Libs.middleware.loginInRequired], controllers.saleController.salesReport);

module.exports = router;