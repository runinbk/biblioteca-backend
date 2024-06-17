import { DataTypes, Model } from "sequelize";
import db from "../../../db/connection";
import Rol from "./rol.model";
import Persona from "./persona.model";

class Usuario extends Model {
    public id!: number;
    public usuario!: string;
    public password!: string;
    public state!: boolean;
    public id_rol!: number; // Llave foránea
    public id_persona!: number; // Llave foránea

    // Otras propiedades del modelo...

    // Definición de las asociaciones
    public static associate() {
        Usuario.belongsTo(Rol, { foreignKey: "id_rol" });
        Usuario.belongsTo(Persona, { foreignKey: "id_persona" });
    }
}


Usuario.init(
    {
        id: {
            type: DataTypes.INTEGER,
            primaryKey: true,
            autoIncrement: true,
        },
        usuario: {
            type: DataTypes.STRING,
        },
        password: {
            type: DataTypes.STRING,
        },
        state: {
            type: DataTypes.BOOLEAN,
        },
        id_rol: {
            type: DataTypes.INTEGER,
            references: {
                model: Rol,
                key: "id",
            },
        },
        id_persona: {
            type: DataTypes.INTEGER,
            references: {
                model: Persona,
                key: "id",
            },
        },
    },
    {
        sequelize: db,
        modelName: "Usuario",
        tableName: "Usuario",
    }
);

export default Usuario;

