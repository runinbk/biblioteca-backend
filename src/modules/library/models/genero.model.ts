import { DataTypes, Model } from "sequelize";
import db from "../../../db/connection";

class Genero extends Model {
    public id!: number;
    public genero!: string;
    public descripcion!: string;
    public state!: boolean;

    // Otras propiedades del modelo...

    // Definición de las asociaciones

}


Genero.init(
    {
        id: {
            type: DataTypes.INTEGER,
            primaryKey: true,
            autoIncrement: true,
        },
        genero: {
            type: DataTypes.STRING,
        },
        descripcion: {
            type: DataTypes.STRING,
        },
        state: {
            type: DataTypes.BOOLEAN,
        }
    },
    {
        sequelize: db,
        modelName: "Genero",
        tableName: "Genero",
    }
);

export default Genero;

