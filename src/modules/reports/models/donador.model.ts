import { DataTypes, Model } from "sequelize";
import db from "../../../db/connection";

class Donador extends Model {
    public id!: number;
    public donadores!: string;
    public celular!: number;
    public state!: boolean;

    // Otras propiedades del modelo...

    // Definición de las asociaciones

}


Donador.init(
    {
        id: {
            type: DataTypes.INTEGER,
            primaryKey: true,
            autoIncrement: true,
        },
        donadores: {
            type: DataTypes.STRING,
        },
        celular: {
            type: DataTypes.NUMBER,
        },
        state: {
            type: DataTypes.BOOLEAN,
        }
    },
    {
        sequelize: db,
        modelName: "Donador",
        tableName: "Donador",
    }
);

export default Donador;

