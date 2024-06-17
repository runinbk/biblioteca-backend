import { DataTypes, Model } from "sequelize";
import db from "../../../db/connection";

class Editorial extends Model {
    public id!: number;
    public editorial!: string;
    public ubicacion!: string;
    public anio!: number;
    public state!: boolean;

    // Otras propiedades del modelo...

    // Definición de las asociaciones

}


Editorial.init(
    {
        id: {
            type: DataTypes.INTEGER,
            primaryKey: true,
            autoIncrement: true,
        },
        editorial: {
            type: DataTypes.STRING,
        },
        ubicacion: {
            type: DataTypes.STRING,
        },
        anio: {
            type: DataTypes.NUMBER,
        },
        state: {
            type: DataTypes.BOOLEAN,
        }
    },
    {
        sequelize: db,
        modelName: "Editorial",
        tableName: "Editorial",
    }
);

export default Editorial;

