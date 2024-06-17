"use strict";
var __importDefault = (this && this.__importDefault) || function (mod) {
    return (mod && mod.__esModule) ? mod : { "default": mod };
};
Object.defineProperty(exports, "__esModule", { value: true });
const sequelize_1 = require("sequelize");
const config_1 = __importDefault(require("../server/config"));
const user = config_1.default.DB_USERNAME || 'ua1slrhkel4452'; //'postgres';
const password = config_1.default.DB_PASSWORD || 'pc70ddd05ffd48cd5962db7640a490772ab183701d4a8db1691b8d85e6b9b7060'; // 'password';
const host = config_1.default.DB_HOST || 'c1i13pt05ja4ag.cluster-czrs8kj4isg7.us-east-1.rds.amazonaws.com';
const port = config_1.default.DB_PORT || 5432;
const database = config_1.default.DB_DATABASE || 'd3tntmgplh10a4';
const typeDatabase = config_1.default.DB_CONNECTION || 'postgres';
const url = `${typeDatabase}://${user}:${password}@${host}:${port}/${database}`;
// const url = config.DATABASE_URL || "";
console.log(url);
const options = {
    dialect: 'postgres',
    logging: false,
    dialectOptions: {
        ssl: {
            rejectUnauthorized: false
        }
    }
};
const sequelizeConnection = new sequelize_1.Sequelize(url, options);
exports.default = sequelizeConnection;
// const db = new Sequelize(url);
// import { Sequelize } from "sequelize";
// //     PARA EL LOCALHOST
// const db = new Sequelize('postgres', 'postgres', 'HolaMundo123', {
//     host: 'localhost',
//     dialect: "postgres",
// })
// db.sync();
// export default db;
//# sourceMappingURL=connection.js.map