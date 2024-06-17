"use strict";
var __importDefault = (this && this.__importDefault) || function (mod) {
    return (mod && mod.__esModule) ? mod : { "default": mod };
};
Object.defineProperty(exports, "__esModule", { value: true });
const sequelize_1 = require("sequelize");
const connection_1 = __importDefault(require("../../../db/connection"));
const libro_model_1 = __importDefault(require("../../library/models/libro.model"));
const donador_model_1 = __importDefault(require("./donador.model"));
class Nota_entrega extends sequelize_1.Model {
    // Otras propiedades del modelo...
    // Definición de las asociaciones
    static associate() {
        libro_model_1.default.belongsTo(libro_model_1.default, { foreignKey: "id_libro" });
        donador_model_1.default.belongsTo(donador_model_1.default, { foreignKey: "id_donador" });
    }
}
Nota_entrega.init({
    id: {
        type: sequelize_1.DataTypes.INTEGER,
        primaryKey: true,
        autoIncrement: true,
    },
    fecha: {
        type: sequelize_1.DataTypes.DATE,
    },
    estado: {
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
    id_donador: {
        type: sequelize_1.DataTypes.INTEGER,
        references: {
            model: donador_model_1.default,
            key: "id",
        },
    },
}, {
    sequelize: connection_1.default,
    modelName: "Nota_entrega",
    tableName: "Nota_entrega",
});
exports.default = Nota_entrega;
//# sourceMappingURL=nota_entrada.model.js.map