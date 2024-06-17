import { DataTypes, Model } from "sequelize";
import db from "../../../db/connection";

class Coleccion extends Model {
    public id!: number;
    public coleccion!: string;
    public descripcion!: string;
    public state!: boolean;

    // Otras propiedades del modelo...

    // Definición de las asociaciones

}


Coleccion.init(
    {
        id: {
            type: DataTypes.INTEGER,
            primaryKey: true,
            autoIncrement: true,
        },
        coleccion: {
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
        modelName: "Coleccion",
        tableName: "Coleccion",
    }
);

export default Coleccion;

