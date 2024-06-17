"use strict";
var __importDefault = (this && this.__importDefault) || function (mod) {
    return (mod && mod.__esModule) ? mod : { "default": mod };
};
Object.defineProperty(exports, "__esModule", { value: true });
const sequelize_1 = require("sequelize");
const connection_1 = __importDefault(require("../../../db/connection"));
class Persona extends sequelize_1.Model {
}
Persona.init({
    id: {
        type: sequelize_1.DataTypes.INTEGER,
        primaryKey: true,
        autoIncrement: true
    },
    nombre: {
        type: sequelize_1.DataTypes.STRING,
    },
    celular: {
        type: sequelize_1.DataTypes.INTEGER
    },
    ci: {
        type: sequelize_1.DataTypes.INTEGER
    },
    correo: {
        type: sequelize_1.DataTypes.STRING
    },
    state: {
        type: sequelize_1.DataTypes.BOOLEAN
    }
}, {
    sequelize: connection_1.default,
    modelName: "Persona",
    tableName: "Persona",
});
exports.default = Persona;
//# sourceMappingURL=persona.model.js.map