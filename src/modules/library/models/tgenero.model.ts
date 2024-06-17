import { DataTypes, Model } from "sequelize";
import db from "../../../db/connection";
import Libro from "./libro.model";
import Genero from "./genero.model";

class Tgenero extends Model {
    public id!: number;
    public state!: boolean;
    public id_libro!: number; // Llave foránea
    public id_genero!: number; // Llave foránea

    // Otras propiedades del modelo...

    // Definición de las asociaciones
    public static associate() {
        Libro.belongsTo(Libro, { foreignKey: "id_libro" });
        Genero.belongsTo(Genero, { foreignKey: "id_genero" });
    }
}


Tgenero.init(
    {
        id: {
            type: DataTypes.INTEGER,
            primaryKey: true,
            autoIncrement: true,
        },
        state: {
            type: DataTypes.BOOLEAN,
        },
        id_libro: {
            type: DataTypes.INTEGER,
            references: {
                model: Libro,
                key: "id",
            },
        },
        id_genero: {
            type: DataTypes.INTEGER,
            references: {
                model: Genero,
                key: "id",
            },
        },
    },
    {
        sequelize: db,
        modelName: "Tgenero",
        tableName: "Tiene_genero",
    }
);

export default Tgenero;

