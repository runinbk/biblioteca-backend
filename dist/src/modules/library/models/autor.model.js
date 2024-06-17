"use strict";
var __importDefault = (this && this.__importDefault) || function (mod) {
    return (mod && mod.__esModule) ? mod : { "default": mod };
};
Object.defineProperty(exports, "__esModule", { value: true });
const sequelize_1 = require("sequelize");
const connection_1 = __importDefault(require("../../../db/connection"));
class Autor extends sequelize_1.Model {
}
Autor.init({
    id: {
        type: sequelize_1.DataTypes.INTEGER,
        primaryKey: true,
        autoIncrement: true,
    },
    autor: {
        type: sequelize_1.DataTypes.STRING,
    },
    fecha_nac: {
        type: sequelize_1.DataTypes.DATE,
    },
    fecha_f: {
        type: sequelize_1.DataTypes.DATE,
    },
    state: {
        type: sequelize_1.DataTypes.BOOLEAN,
    }
}, {
    sequelize: connection_1.default,
    modelName: "Autor",
    tableName: "Autor",
});
exports.default = Autor;
//# sourceMappingURL=autor.model.js.map