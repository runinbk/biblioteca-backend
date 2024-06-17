import { DataTypes, Model } from "sequelize";
import db from "../../../db/connection";
import Usuario from "../../auth/models/usuario.model";

class Biblioteca extends Model {
    public id!: number;
    public biblioteca!: string;
    public ubicacion!: string;
    public capacidad_pers!: number;
    public state!: boolean;
    public id_usuario!: number; // Llave foránea

    // Otras propiedades del modelo...

    // Definición de las asociaciones
    public static associate() {
        Usuario.belongsTo(Usuario, { foreignKey: "id_usuario" });
    }
}


Biblioteca.init(
    {
        id: {
            type: DataTypes.INTEGER,
            primaryKey: true,
            autoIncrement: true,
        },
        biblioteca: {
            type: DataTypes.STRING,
        },
        ubicacion: {
            type: DataTypes.STRING,
        },
        capacidad_pers: {
            type: DataTypes.INTEGER,
        },
        state: {
            type: DataTypes.BOOLEAN,
        },
        id_usuario: {
            type: DataTypes.INTEGER,
            references: {
                model: Usuario,
                key: "id",
            },
        },
    },
    {
        sequelize: db,
        modelName: "Biblioteca",
        tableName: "Biblioteca",
    }
);

export default Biblioteca;

