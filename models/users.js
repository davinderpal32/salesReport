"use strict";
const Sequelize = require("sequelize");

module.exports = (sequelize, DataTypes) => {
    const users = sequelize.define("users",
        {
            user_id: { type: Sequelize.BIGINT, primaryKey: true, autoIncrement: true },
            name: { type: DataTypes.STRING(255), allowNull: true },
            email: { type: DataTypes.STRING(255), allowNull: true },
            password: { type: DataTypes.STRING(255), allowNull: true },
            phone_number: { type: Sequelize.BIGINT, allowNull: true },
            access_token: { type: DataTypes.STRING(255), allowNull: true },
            blocked: { type: DataTypes.ENUM("0", "1"), allowNull: false, defaultValue: "0" }
        }
    );

    return users;
};