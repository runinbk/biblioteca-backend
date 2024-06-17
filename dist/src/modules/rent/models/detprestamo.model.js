"use strict";
var __importDefault = (this && this.__importDefault) || function (mod) {
    return (mod && mod.__esModule) ? mod : { "default": mod };
};
Object.defineProperty(exports, "__esModule", { value: true });
const sequelize_1 = require("sequelize");
const connection_1 = __importDefault(require("../../../db/connection"));
const prestamo_model_1 = __importDefault(require("./prestamo.model"));
const persona_model_1 = __importDefault(require("../../auth/models/persona.model"));
class Detalle_prestamo extends sequelize_1.Model {
    // Definición de las asociaciones
    static associate() {
        prestamo_model_1.default.belongsTo(prestamo_model_1.default, { foreignKey: "id_prestamo" });
        persona_model_1.default.belongsTo(persona_model_1.default, { foreignKey: "id_persona" });
    }
}
Detalle_prestamo.init({
    id: {
        type: sequelize_1.DataTypes.INTEGER,
        primaryKey: true,
        autoIncrement: true,
    },
    hora_devolucion: {
        type: sequelize_1.DataTypes.TIME,
        allowNull: false,
    },
    hora_salida: {
        type: sequelize_1.DataTypes.TIME,
        allowNull: false,
    },
    observacion: {
        type: sequelize_1.DataTypes.TEXT,
        allowNull: true,
    },
    fecha_devolucion: {
        type: sequelize_1.DataTypes.DATEONLY,
        allowNull: false,
    },
    state: {
        type: sequelize_1.DataTypes.BOOLEAN,
        allowNull: false,
        defaultValue: true,
    },
    id_prestamo: {
        type: sequelize_1.DataTypes.INTEGER,
        references: {
            model: prestamo_model_1.default,
            key: "id",
        },
    },
    id_persona: {
        type: sequelize_1.DataTypes.INTEGER,
        references: {
            model: persona_model_1.default,
            key: "id",
        },
    },
}, {
    sequelize: connection_1.default,
    modelName: "Detalle_prestamo",
    tableName: "Detalle_prestamo",
    timestamps: true, // Esto habilita los timestamps automáticos para createdAt y updatedAt
});
exports.default = Detalle_prestamo;
//# sourceMappingURL=detprestamo.model.js.map