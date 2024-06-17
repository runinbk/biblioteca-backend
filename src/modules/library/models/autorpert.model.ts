import { DataTypes, Model } from "sequelize";
import db from "../../../db/connection";
import Libro from "./libro.model";
import Autor from "./autor.model";

class Autor_pertenece extends Model {
    public id!: number;
    public state!: boolean;
    public id_libro!: number; // Llave foránea
    public id_autor!: number; // Llave foránea

    // Otras propiedades del modelo...

    // Definición de las asociaciones
    public static associate() {
        Libro.belongsTo(Libro, { foreignKey: "id_libro" });
        Autor.belongsTo(Autor, { foreignKey: "id_autor" });
    }
}


Autor_pertenece.init(
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
        id_autor: {
            type: DataTypes.INTEGER,
            references: {
                model: Autor,
                key: "id",
            },
        },
    },
    {
        sequelize: db,
        modelName: "Autor_pertenece",
        tableName: "Autor_pertenece",
    }
);

export default Autor_pertenece;

