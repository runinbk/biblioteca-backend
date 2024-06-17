import { DataTypes, Model } from "sequelize";
import db from "../../../db/connection";
import Prestamo from "./prestamo.model";
import Persona from "../../auth/models/persona.model";

class Detalle_prestamo extends Model {
    public id!: number;
    public id_prestamo!: number;
    public id_persona!: number;
    public hora_devolucion!: string;
    public hora_salida!: string;
    public observacion!: string;
    public fecha_devolucion!: Date;
    public state!: boolean;
    public createdAt!: Date;
    public updatedAt!: Date;

    // Definición de las asociaciones
    public static associate() {
        Prestamo.belongsTo(Prestamo, { foreignKey: "id_prestamo" });
        Persona.belongsTo(Persona, { foreignKey: "id_persona" });
    }
}

Detalle_prestamo.init(
    {
        id: {
            type: DataTypes.INTEGER,
            primaryKey: true,
            autoIncrement: true,
        },
        hora_devolucion: {
            type: DataTypes.TIME,
            allowNull: false,
        },
        hora_salida: {
            type: DataTypes.TIME,
            allowNull: false,
        },
        observacion: {
            type: DataTypes.TEXT,
            allowNull: true,
        },
        fecha_devolucion: {
            type: DataTypes.DATEONLY,
            allowNull: false,
        },
        state: {
            type: DataTypes.BOOLEAN,
            allowNull: false,
            defaultValue: true,
        },
        id_prestamo: {
            type: DataTypes.INTEGER,
            references: {
                model: Prestamo,
                key: "id",
            },
        },
        id_persona: {
            type: DataTypes.INTEGER,
            references: {
                model: Persona,
                key: "id",
            },
        },
    },
    {
        sequelize: db,
        modelName: "Detalle_prestamo",
        tableName: "Detalle_prestamo",
        timestamps: true, // Esto habilita los timestamps automáticos para createdAt y updatedAt
    }
);

export default Detalle_prestamo;
