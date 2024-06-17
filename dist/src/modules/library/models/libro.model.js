"use strict";
var __importDefault = (this && this.__importDefault) || function (mod) {
    return (mod && mod.__esModule) ? mod : { "default": mod };
};
Object.defineProperty(exports, "__esModule", { value: true });
const sequelize_1 = require("sequelize");
const connection_1 = __importDefault(require("../../../db/connection"));
const biblioteca_model_1 = __importDefault(require("./biblioteca.model"));
const editorial_moodel_1 = __importDefault(require("./editorial.moodel"));
const coleccion_model_1 = __importDefault(require("./coleccion.model"));
class Libro extends sequelize_1.Model {
    // Otras propiedades del modelo...
    // Definición de las asociaciones
    static associate() {
        biblioteca_model_1.default.belongsTo(biblioteca_model_1.default, { foreignKey: "id_biblioteca" });
        editorial_moodel_1.default.belongsTo(editorial_moodel_1.default, { foreignKey: "id_editorial" });
        coleccion_model_1.default.belongsTo(coleccion_model_1.default, { foreignKey: "id_coleccion" });
    }
}
Libro.init({
    id: {
        type: sequelize_1.DataTypes.INTEGER,
        primaryKey: true,
        autoIncrement: true,
    },
    titulo: {
        type: sequelize_1.DataTypes.STRING,
    },
    descripcion: {
        type: sequelize_1.DataTypes.STRING,
    },
    nro_paginas: {
        type: sequelize_1.DataTypes.INTEGER,
    },
    estado_prestamo: {
        type: sequelize_1.DataTypes.BOOLEAN,
    },
    fecha_version: {
        type: sequelize_1.DataTypes.DATE,
    },
    state: {
        type: sequelize_1.DataTypes.BOOLEAN,
    },
    id_biblioteca: {
        type: sequelize_1.DataTypes.INTEGER,
        references: {
            model: biblioteca_model_1.default,
            key: "id",
        },
    },
    id_editorial: {
        type: sequelize_1.DataTypes.INTEGER,
        references: {
            model: editorial_moodel_1.default,
            key: "id",
        },
    },
    id_coleccion: {
        type: sequelize_1.DataTypes.INTEGER,
        references: {
            model: coleccion_model_1.default,
            key: "id",
        },
    },
}, {
    sequelize: connection_1.default,
    modelName: "Libro",
    tableName: "Libro",
});
exports.default = Libro;
//# sourceMappingURL=libro.model.js.map