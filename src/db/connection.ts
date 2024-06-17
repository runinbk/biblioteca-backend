import { Options, Sequelize } from "sequelize";

import config from "../server/config";

const user = config.DB_USERNAME || 'ua1slrhkel4452'; //'postgres';
const password = config.DB_PASSWORD || 'pc70ddd05ffd48cd5962db7640a490772ab183701d4a8db1691b8d85e6b9b7060' // 'password';
const host = config.DB_HOST || 'c1i13pt05ja4ag.cluster-czrs8kj4isg7.us-east-1.rds.amazonaws.com';
const port = config.DB_PORT || 5432;
const database = config.DB_DATABASE || 'd3tntmgplh10a4';
const typeDatabase = config.DB_CONNECTION || 'postgres';

const url = `${typeDatabase}://${user}:${password}@${host}:${port}/${database}`;
// const url = config.DATABASE_URL || "";

console.log(url);

const options: Options = {
    dialect: 'postgres', // 'mysql' | 'sqlite' | 'postgres' | 'mariadb' | 'mssql'
    logging: false, // false
    dialectOptions: {
        ssl: {
            rejectUnauthorized: false
        }
    }
};

const sequelizeConnection = new Sequelize(url, options);
export default sequelizeConnection;

// const db = new Sequelize(url);

// import { Sequelize } from "sequelize";

// //     PARA EL LOCALHOST
// const db = new Sequelize('postgres', 'postgres', 'HolaMundo123', {
//     host: 'localhost',
//     dialect: "postgres",
// })

// db.sync();

// export default db;