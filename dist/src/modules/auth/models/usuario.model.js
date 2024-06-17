"use strict";
var __importDefault = (this && this.__importDefault) || function (mod) {
    return (mod && mod.__esModule) ? mod : { "default": mod };
};
Object.defineProperty(exports, "__esModule", { value: true });
const sequelize_1 = require("sequelize");
const connection_1 = __importDefault(require("../../../db/connection"));
const rol_model_1 = __importDefault(require("./rol.model"));
const persona_model_1 = __importDefault(require("./persona.model"));
class Usuario extends sequelize_1.Model {
    // Otras propiedades del modelo...
    // Definición de las asociaciones
    static associate() {
        Usuario.belongsTo(rol_model_1.default, { foreignKey: "id_rol" });
        Usuario.belongsTo(persona_model_1.default, { foreignKey: "id_persona" });
    }
}
Usuario.init({
    id: {
        type: sequelize_1.DataTypes.INTEGER,
        primaryKey: true,
        autoIncrement: true,
    },
    usuario: {
        type: sequelize_1.DataTypes.STRING,
    },
    password: {
        type: sequelize_1.DataTypes.STRING,
    },
    state: {
        type: sequelize_1.DataTypes.BOOLEAN,
    },
    id_rol: {
        type: sequelize_1.DataTypes.INTEGER,
        references: {
            model: rol_model_1.default,
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
    modelName: "Usuario",
    tableName: "Usuario",
});
exports.default = Usuario;
//# sourceMappingURL=usuario.model.js.map