"use strict";
var __importDefault = (this && this.__importDefault) || function (mod) {
    return (mod && mod.__esModule) ? mod : { "default": mod };
};
Object.defineProperty(exports, "__esModule", { value: true });
const sequelize_1 = require("sequelize");
const connection_1 = __importDefault(require("../../../db/connection"));
class Donador extends sequelize_1.Model {
}
Donador.init({
    id: {
        type: sequelize_1.DataTypes.INTEGER,
        primaryKey: true,
        autoIncrement: true,
    },
    donadores: {
        type: sequelize_1.DataTypes.STRING,
    },
    celular: {
        type: sequelize_1.DataTypes.NUMBER,
    },
    state: {
        type: sequelize_1.DataTypes.BOOLEAN,
    }
}, {
    sequelize: connection_1.default,
    modelName: "Donador",
    tableName: "Donador",
});
exports.default = Donador;
//# sourceMappingURL=donador.model.js.map