import { DataTypes, Model } from "sequelize";
import db from "../../../db/connection";

class Autor extends Model {
    public id!: number;
    public autor!: string;
    public fecha_nac!: Date;
    public fecha_f!: Date;
    public state!: boolean;

    // Otras propiedades del modelo...

    // Definición de las asociaciones

}


Autor.init(
    {
        id: {
            type: DataTypes.INTEGER,
            primaryKey: true,
            autoIncrement: true,
        },
        autor: {
            type: DataTypes.STRING,
        },
        fecha_nac: {
            type: DataTypes.DATE,
        },
        fecha_f: {
            type: DataTypes.DATE,
        },
        state: {
            type: DataTypes.BOOLEAN,
        }
    },
    {
        sequelize: db,
        modelName: "Autor",
        tableName: "Autor",
    }
);

export default Autor;

