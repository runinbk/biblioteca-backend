import { DataTypes, Model } from "sequelize";
import db from "../../../db/connection";
import Biblioteca from "./biblioteca.model";
import Editorial from "./editorial.moodel";
import Coleccion from "./coleccion.model";

class Libro extends Model {
    public id!: number;
    public titulo!: string;
    public descripcion!: string;
    public nro_paginas!: number;
    public estado_prestamo!: boolean;
    public fecha_version!: Date;
    public state!: boolean;
    public id_biblioteca!: number; // Llave foránea
    public id_editorial!: number; // Llave foránea
    public id_coleccion!: number; // Llave foránea

    // Otras propiedades del modelo...

    // Definición de las asociaciones
    public static associate() {
        Biblioteca.belongsTo(Biblioteca, { foreignKey: "id_biblioteca" });
        Editorial.belongsTo(Editorial, { foreignKey: "id_editorial" });
        Coleccion.belongsTo(Coleccion, { foreignKey: "id_coleccion" });
    }
}


Libro.init(
    {
        id: {
            type: DataTypes.INTEGER,
            primaryKey: true,
            autoIncrement: true,
        },
        titulo: {
            type: DataTypes.STRING,
        },
        descripcion: {
            type: DataTypes.STRING,
        },
        nro_paginas: {
            type: DataTypes.INTEGER,
        },
        estado_prestamo: {
            type: DataTypes.BOOLEAN,
        },
        fecha_version: {
            type: DataTypes.DATE,
        },
        state: {
            type: DataTypes.BOOLEAN,
        },
        id_biblioteca: {
            type: DataTypes.INTEGER,
            references: {
                model: Biblioteca,
                key: "id",
            },
        },
        id_editorial: {
            type: DataTypes.INTEGER,
            references: {
                model: Editorial,
                key: "id",
            },
        },
        id_coleccion: {
            type: DataTypes.INTEGER,
            references: {
                model: Coleccion,
                key: "id",
            },
        },
    },
    {
        sequelize: db,
        modelName: "Libro",
        tableName: "Libro",
    }
);

export default Libro;

