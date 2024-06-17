
import { DataTypes, Model } from "sequelize";
import db from "../../../db/connection";

class Persona extends Model {

    public id!: number;
    public nombre!: string;
    public celular!: number;
    public ci!: number;
    public correo!: string;
    public state!: boolean;

    // Otras propiedades del modelo

}

Persona.init(
    {
        id: {
            type: DataTypes.INTEGER,
            primaryKey: true,
            autoIncrement: true
        },
        nombre: {
            type: DataTypes.STRING,
        },
        celular: {
            type: DataTypes.INTEGER
        },
        ci: {
            type: DataTypes.INTEGER
        },
        correo: {
            type: DataTypes.STRING
        },
        state: {
            type: DataTypes.BOOLEAN
        }
    },
    {
        sequelize: db,
        modelName: "Persona",
        tableName: "Persona",
    }
);

export default Persona;