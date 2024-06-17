"use strict";
var __importDefault = (this && this.__importDefault) || function (mod) {
    return (mod && mod.__esModule) ? mod : { "default": mod };
};
Object.defineProperty(exports, "__esModule", { value: true });
const sequelize_1 = require("sequelize");
const connection_1 = __importDefault(require("../../../db/connection"));
const libro_model_1 = __importDefault(require("./libro.model"));
const autor_model_1 = __importDefault(require("./autor.model"));
class Autor_pertenece extends sequelize_1.Model {
    // Otras propiedades del modelo...
    // Definición de las asociaciones
    static associate() {
        libro_model_1.default.belongsTo(libro_model_1.default, { foreignKey: "id_libro" });
        autor_model_1.default.belongsTo(autor_model_1.default, { foreignKey: "id_autor" });
    }
}
Autor_pertenece.init({
    id: {
        type: sequelize_1.DataTypes.INTEGER,
        primaryKey: true,
        autoIncrement: true,
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
    id_autor: {
        type: sequelize_1.DataTypes.INTEGER,
        references: {
            model: autor_model_1.default,
            key: "id",
        },
    },
}, {
    sequelize: connection_1.default,
    modelName: "Autor_pertenece",
    tableName: "Autor_pertenece",
});
exports.default = Autor_pertenece;
//# sourceMappingURL=autorpert.model.js.map