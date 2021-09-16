
"use strict";
const Sequelize = require("sequelize");

module.exports = (sequelize, DataTypes) => {
    const sales = sequelize.define("sales",
        {
            sale_id: { type: Sequelize.BIGINT, primaryKey: true, autoIncrement: true },
            user_id: { type: Sequelize.BIGINT, allowNull: true },
            amount: { type: Sequelize.BIGINT, allowNull: true },
            sale_on: { type: DataTypes.STRING(30), allowNull: true },
            blocked: { type: DataTypes.ENUM("0", "1"), allowNull: false, defaultValue: "0" }
        }
    );
    sales.associate = function (models) {

    };

    return sales;
};