import express, { Application } from "express";
import cors from "cors";
const bodyParser = require('body-parser');

import config from "./config";

import db from "../db/connection";

// import authRoutes from "../modules/auth/routes/auth.routes";
import rolRoutes from "../modules/auth/routes/rol.routes";
import personaRoutes from "../modules/auth/routes/persona.routes";
import usuarioRoutes from "../modules/auth/routes/usuario.routes";
import biblioRoutes from "../modules/library/routes/biblioteca.routes";
import generoRoutes from "../modules/library/routes/genero.routes";
import autorRoutes from "../modules/library/routes/autor.routes";
import editorialRoutes from "../modules/library/routes/editorial.routes";
import coleccionRoutes from "../modules/library/routes/coleccion.routes";
import libroRoutes from "../modules/library/routes/libro.routes";
import autorpertRoutes from "../modules/library/routes/autorpert.routes";
import tgeneroRoutes from "../modules/library/routes/tgenero.routes";
import slibroRoutes from "../modules/library/routes/slibro.routes";
import donadorRoutes from "../modules/reports/routers/donador.routes";
import nota_entregaRoutes from "../modules/reports/routers/nota_entrega.routes";
import nota_salidaRoutes from "../modules/reports/routers/nota_salida.routes";
import libro_catalogoRoutes from "../modules/rent/routers/libro_catalogo.routes";
import prestamoRoutes from "../modules/rent/routers/prestamo.routes";
import detprestamoRoutes from "../modules/rent/routers/detprestamo.routes";

export class Server {
    private app: Application;
    private port: string | number | undefined;

    private apiPaths = {
        auth: "/api/auth",
        rol: "/api/rol",
        persona: "/api/persona",
        usuario: "/api/usuario",
        biblio: "/api/biblio",
        genero: "/api/genero",
        autor: "/api/autor",
        editorial: "/api/editorial",
        coleccion: "/api/coleccion",
        libro: "/api/libro",
        autorpert: "/api/autorpert",
        tgenero: "/api/tgenero",
        slibro: "/api/slibro",
        donador: "/api/donador",
        nota_entrega: "/api/nota_entrega",
        nota_salida: "/api/nota_salida",
        libro_catalogo: "/api/libro_catalogo",
        prestamo: "/api/prestamo",
        detprestamo: "/api/detprestamo",
    };

    constructor() {
        this.app = express();
        this.port = config.PORT || "8000";

        //    Metodos iniciales
        this.dbConnection();
        this.middlewares();
        this.routes();
    }

    async dbConnection() {
        try {
            await db.authenticate();
            console.log("Database online");
        } catch (error) {
            console.log("Database ofline - " + error);
        }
    }

    middlewares() {
        // CORS
        this.app.use(cors());

        // LECTURA DEL BODY
        this.app.use(express.json());

        // CARPETA PUBLICA
        this.app.use(express.static("public"));

        this.app.use(bodyParser.json());
    }

    routes() {
        // this.app.use(this.apiPaths.auth, authRoutes);
        this.app.use(this.apiPaths.rol, rolRoutes);
        this.app.use(this.apiPaths.persona, personaRoutes);
        this.app.use(this.apiPaths.usuario, usuarioRoutes);
        this.app.use(this.apiPaths.biblio, biblioRoutes);
        this.app.use(this.apiPaths.genero, generoRoutes);
        this.app.use(this.apiPaths.autor, autorRoutes);
        this.app.use(this.apiPaths.editorial, editorialRoutes);
        this.app.use(this.apiPaths.coleccion, coleccionRoutes);
        this.app.use(this.apiPaths.libro, libroRoutes);
        this.app.use(this.apiPaths.autorpert, autorpertRoutes);
        this.app.use(this.apiPaths.tgenero, tgeneroRoutes);
        this.app.use(this.apiPaths.slibro, slibroRoutes);
        this.app.use(this.apiPaths.donador, donadorRoutes);
        this.app.use(this.apiPaths.nota_entrega, nota_entregaRoutes);
        this.app.use(this.apiPaths.nota_salida, nota_salidaRoutes);
        this.app.use(this.apiPaths.libro_catalogo, libro_catalogoRoutes);
        this.app.use(this.apiPaths.prestamo, prestamoRoutes);
        this.app.use(this.apiPaths.detprestamo, detprestamoRoutes);
    }

    listen() {
        this.app.listen(this.port, () => {
            console.log("Servidor corriendo en le puerto : " + this.port);
        });
    }
}
