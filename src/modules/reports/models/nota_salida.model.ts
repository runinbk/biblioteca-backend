import { DataTypes, Model } from "sequelize";
import db from "../../../db/connection";
import Libro from "../../library/models/libro.model";

class Nota_salida extends Model {
    public id!: number;
    public fecha!: Date;
    public estado!: number;
    public state!: boolean;
    public id_libro!: number; // Llave foránea

    // Otras propiedades del modelo...

    // Definición de las asociaciones
    public static associate() {
        Libro.belongsTo(Libro, { foreignKey: "id_libro" });
    }
}


Nota_salida.init(
    {
        id: {
            type: DataTypes.INTEGER,
            primaryKey: true,
            autoIncrement: true,
        },
        fecha: {
            type: DataTypes.DATE,
        },
        estado: {
            type: DataTypes.NUMBER,
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
        modelName: "Nota_salida",
        tableName: "Nota_salida",
    }
);

export default Nota_salida;

