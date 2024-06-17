import { DataTypes, Model } from "sequelize";
import db from "../../../db/connection";
import Libro from "../../library/models/libro.model";

class Libro_catalogo extends Model {
    public id!: number;
    public nro_libros_prestados!: number;
    public nro_libros_disponibles!: number;
    public nro_libros!: number;
    public state!: boolean;
    public id_libro!: number; // Llave foránea

    // Otras propiedades del modelo...

    // Definición de las asociaciones
    public static associate() {
        Libro.belongsTo(Libro, { foreignKey: "id_libro" });
    }
}


Libro_catalogo.init(
    {
        id: {
            type: DataTypes.INTEGER,
            primaryKey: true,
            autoIncrement: true,
        },
        nro_libros_prestados: {
            type: DataTypes.NUMBER,
        },
        nro_libros_disponibles: {
            type: DataTypes.NUMBER,
        },
        nro_libros: {
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
        modelName: "Libro_catalogo",
        tableName: "Libro_catalogo",
    }
);

export default Libro_catalogo;

