import { DataTypes, Model } from "sequelize";
import db from "../../../db/connection";
import Libro from "./libro.model";

class Slibro extends Model {
    public id!: number;
    public fecha!: Date;
    public descripcion!: string;
    public state!: boolean;
    public id_libro!: number; // Llave foránea

    // Otras propiedades del modelo...

    // Definición de las asociaciones
    public static associate() {
        Libro.belongsTo(Libro, { foreignKey: "id_libro" });
    }
}


Slibro.init(
    {
        id: {
            type: DataTypes.INTEGER,
            primaryKey: true,
            autoIncrement: true,
        },
        fecha: {
            type: DataTypes.DATE,
        },
        descripcion: {
            type: DataTypes.TEXT,
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
    },
    {
        sequelize: db,
        modelName: "Slibro",
        tableName: "Estado_libro",
    }
);

export default Slibro;

