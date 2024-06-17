"use strict";
var __importDefault = (this && this.__importDefault) || function (mod) {
    return (mod && mod.__esModule) ? mod : { "default": mod };
};
Object.defineProperty(exports, "__esModule", { value: true });
const sequelize_1 = require("sequelize");
const connection_1 = __importDefault(require("../../../db/connection"));
const libro_model_1 = __importDefault(require("./libro.model"));
const genero_model_1 = __importDefault(require("./genero.model"));
class Tgenero extends sequelize_1.Model {
    // Otras propiedades del modelo...
    // Definición de las asociaciones
    static associate() {
        libro_model_1.default.belongsTo(libro_model_1.default, { foreignKey: "id_libro" });
        genero_model_1.default.belongsTo(genero_model_1.default, { foreignKey: "id_genero" });
    }
}
Tgenero.init({
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
    id_genero: {
        type: sequelize_1.DataTypes.INTEGER,
        references: {
            model: genero_model_1.default,
            key: "id",
        },
    },
}, {
    sequelize: connection_1.default,
    modelName: "Tgenero",
    tableName: "Tiene_genero",
});
exports.default = Tgenero;
//# sourceMappingURL=tgenero.model.js.map