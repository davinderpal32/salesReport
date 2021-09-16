
const Services = require(appRoot + "/services");
const Db = require(appRoot + "/models");
const moment = require("moment");
const libs = require("../libs");


exports.getDates = async (startDate, stopDate) => {
    let betweenDates = [];
    let diff = new Date(stopDate) - new Date(startDate),
        noOfDays = diff / 86400000,
        i, temp;

    for (i = 0; i <= noOfDays; i = i + 1) {
        temp = moment(stopDate).add(-i, "days").format('YYYY-MM-DD');
        betweenDates.push(temp);
    }
    return betweenDates;
}