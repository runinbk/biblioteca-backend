"use strict";
var __importDefault = (this && this.__importDefault) || function (mod) {
    return (mod && mod.__esModule) ? mod : { "default": mod };
};
Object.defineProperty(exports, "__esModule", { value: true });
const sequelize_1 = require("sequelize");
const connection_1 = __importDefault(require("../../../db/connection"));
const libro_catalogo_model_1 = __importDefault(require("./libro_catalogo.model"));
class Prestamo extends sequelize_1.Model {
    // Otras propiedades del modelo...
    // Definición de las asociaciones
    static associate() {
        libro_catalogo_model_1.default.belongsTo(libro_catalogo_model_1.default, { foreignKey: "id_libro_catalgo" });
    }
}
Prestamo.init({
    id: {
        type: sequelize_1.DataTypes.INTEGER,
        primaryKey: true,
        autoIncrement: true,
    },
    fecha_ini: {
        type: sequelize_1.DataTypes.DATEONLY,
    },
    fecha_fin: {
        type: sequelize_1.DataTypes.DATEONLY,
    },
    observacion: {
        type: sequelize_1.DataTypes.TEXT,
    },
    mora: {
        type: sequelize_1.DataTypes.NUMBER,
    },
    dias_atraso: {
        type: sequelize_1.DataTypes.NUMBER,
    },
    multa_por_dia: {
        type: sequelize_1.DataTypes.DECIMAL(10, 2),
    },
    multa_total: {
        type: sequelize_1.DataTypes.DECIMAL(10, 2),
    },
    state: {
        type: sequelize_1.DataTypes.BOOLEAN,
    },
    tipo_prestamo: {
        type: sequelize_1.DataTypes.BOOLEAN,
    },
    id_libro_catalgo: {
        type: sequelize_1.DataTypes.INTEGER,
        references: {
            model: libro_catalogo_model_1.default,
            key: "id",
        },
    },
}, {
    sequelize: connection_1.default,
    modelName: "Prestamo",
    tableName: "Prestamo",
});
exports.default = Prestamo;
//# sourceMappingURL=prestamo.model.js.map