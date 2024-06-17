import { DataTypes, Model } from "sequelize";
import db from "../../../db/connection";
import Libro from "../../library/models/libro.model";
import Donador from "./donador.model";

class Nota_entrega extends Model {
    public id!: number;
    public fecha!: Date;
    public estado!: number;
    public state!: boolean;
    public id_libro!: number; // Llave foránea
    public id_donador!: number; // Llave foránea

    // Otras propiedades del modelo...

    // Definición de las asociaciones
    public static associate() {
        Libro.belongsTo(Libro, { foreignKey: "id_libro" });
        Donador.belongsTo(Donador, { foreignKey: "id_donador" });
    }
}


Nota_entrega.init(
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
        id_donador: {
            type: DataTypes.INTEGER,
            references: {
                model: Donador,
                key: "id",
            },
        },
    },
    {
        sequelize: db,
        modelName: "Nota_entrega",
        tableName: "Nota_entrega",
    }
);

export default Nota_entrega;

