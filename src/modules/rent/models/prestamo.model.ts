import { DataTypes, Model } from "sequelize";
import db from "../../../db/connection";
import LibroCat from "./libro_catalogo.model";

class Prestamo extends Model {
    public id!: number;
    public fecha_ini!: Date;
    public fecha_fin!: Date;
    public observacion!: string;
    public mora!: number;
    public dias_atraso!: number;
    public multa_por_dia!: number;
    public multa_total!: number;
    public tipo_prestamo!: boolean;
    public state!: boolean;
    public id_libro_catalgo!: number; // Llave foránea

    // Otras propiedades del modelo...

    // Definición de las asociaciones
    public static associate() {
        LibroCat.belongsTo(LibroCat, { foreignKey: "id_libro_catalgo" });
    }
}


Prestamo.init(
    {
        id: {
            type: DataTypes.INTEGER,
            primaryKey: true,
            autoIncrement: true,
        },
        fecha_ini: {
            type: DataTypes.DATEONLY,
        },
        fecha_fin: {
            type: DataTypes.DATEONLY,
        },
        observacion: {
            type: DataTypes.TEXT,
        },
        mora: {
            type: DataTypes.NUMBER,
        },
        dias_atraso: {
            type: DataTypes.NUMBER,
        },
        multa_por_dia: {
            type: DataTypes.DECIMAL(10, 2),
        },
        multa_total: {
            type: DataTypes.DECIMAL(10, 2),
        },
        state: {
            type: DataTypes.BOOLEAN,
        },
        tipo_prestamo: {
            type: DataTypes.BOOLEAN,
        },
        id_libro_catalgo: {
            type: DataTypes.INTEGER,
            references: {
                model: LibroCat,
                key: "id",
            },
        },
    },
    {
        sequelize: db,
        modelName: "Prestamo",
        tableName: "Prestamo",
    }
);

export default Prestamo;

