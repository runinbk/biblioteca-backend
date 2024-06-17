"use strict";
var __importDefault = (this && this.__importDefault) || function (mod) {
    return (mod && mod.__esModule) ? mod : { "default": mod };
};
Object.defineProperty(exports, "__esModule", { value: true });
const sequelize_1 = require("sequelize");
const connection_1 = __importDefault(require("../../../db/connection"));
const libro_model_1 = __importDefault(require("../../library/models/libro.model"));
class Libro_catalogo extends sequelize_1.Model {
    // Otras propiedades del modelo...
    // Definición de las asociaciones
    static associate() {
        libro_model_1.default.belongsTo(libro_model_1.default, { foreignKey: "id_libro" });
    }
}
Libro_catalogo.init({
    id: {
        type: sequelize_1.DataTypes.INTEGER,
        primaryKey: true,
        autoIncrement: true,
    },
    nro_libros_prestados: {
        type: sequelize_1.DataTypes.NUMBER,
    },
    nro_libros_disponibles: {
        type: sequelize_1.DataTypes.NUMBER,
    },
    nro_libros: {
        type: sequelize_1.DataTypes.NUMBER,
    },
    state: {
        type: sequelize_1.DataTypes.BOOLEAN,
    },
    id_libro: {
        type: sequelize_1.DataTypes.INTEGER,
        references: {
            model: libro_model_1.default,
            key: "id",
        },
    },
}, {
    sequelize: connection_1.default,
    modelName: "Libro_catalogo",
    tableName: "Libro_catalogo",
});
exports.default = Libro_catalogo;
//# sourceMappingURL=libro_catalogo.model.js.map