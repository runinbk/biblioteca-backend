"use strict";
var __awaiter = (this && this.__awaiter) || function (thisArg, _arguments, P, generator) {
    function adopt(value) { return value instanceof P ? value : new P(function (resolve) { resolve(value); }); }
    return new (P || (P = Promise))(function (resolve, reject) {
        function fulfilled(value) { try { step(generator.next(value)); } catch (e) { reject(e); } }
        function rejected(value) { try { step(generator["throw"](value)); } catch (e) { reject(e); } }
        function step(result) { result.done ? resolve(result.value) : adopt(result.value).then(fulfilled, rejected); }
        step((generator = generator.apply(thisArg, _arguments || [])).next());
    });
};
var __importDefault = (this && this.__importDefault) || function (mod) {
    return (mod && mod.__esModule) ? mod : { "default": mod };
};
Object.defineProperty(exports, "__esModule", { value: true });
exports.Server = void 0;
const express_1 = __importDefault(require("express"));
const cors_1 = __importDefault(require("cors"));
const bodyParser = require('body-parser');
const config_1 = __importDefault(require("./config"));
const connection_1 = __importDefault(require("../db/connection"));
// import authRoutes from "../modules/auth/routes/auth.routes";
const rol_routes_1 = __importDefault(require("../modules/auth/routes/rol.routes"));
const persona_routes_1 = __importDefault(require("../modules/auth/routes/persona.routes"));
const usuario_routes_1 = __importDefault(require("../modules/auth/routes/usuario.routes"));
const biblioteca_routes_1 = __importDefault(require("../modules/library/routes/biblioteca.routes"));
const genero_routes_1 = __importDefault(require("../modules/library/routes/genero.routes"));
const autor_routes_1 = __importDefault(require("../modules/library/routes/autor.routes"));
const editorial_routes_1 = __importDefault(require("../modules/library/routes/editorial.routes"));
const coleccion_routes_1 = __importDefault(require("../modules/library/routes/coleccion.routes"));
const libro_routes_1 = __importDefault(require("../modules/library/routes/libro.routes"));
const autorpert_routes_1 = __importDefault(require("../modules/library/routes/autorpert.routes"));
const tgenero_routes_1 = __importDefault(require("../modules/library/routes/tgenero.routes"));
const slibro_routes_1 = __importDefault(require("../modules/library/routes/slibro.routes"));
const donador_routes_1 = __importDefault(require("../modules/reports/routers/donador.routes"));
const nota_entrega_routes_1 = __importDefault(require("../modules/reports/routers/nota_entrega.routes"));
const nota_salida_routes_1 = __importDefault(require("../modules/reports/routers/nota_salida.routes"));
const libro_catalogo_routes_1 = __importDefault(require("../modules/rent/routers/libro_catalogo.routes"));
const prestamo_routes_1 = __importDefault(require("../modules/rent/routers/prestamo.routes"));
const detprestamo_routes_1 = __importDefault(require("../modules/rent/routers/detprestamo.routes"));
class Server {
    constructor() {
        this.apiPaths = {
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
        this.app = (0, express_1.default)();
        this.port = config_1.default.PORT || "8000";
        //    Metodos iniciales
        this.dbConnection();
        this.middlewares();
        this.routes();
    }
    dbConnection() {
        return __awaiter(this, void 0, void 0, function* () {
            try {
                yield connection_1.default.authenticate();
                console.log("Database online");
            }
            catch (error) {
                console.log("Database ofline - " + error);
            }
        });
    }
    middlewares() {
        // CORS
        this.app.use((0, cors_1.default)());
        // LECTURA DEL BODY
        this.app.use(express_1.default.json());
        // CARPETA PUBLICA
        this.app.use(express_1.default.static("public"));
        this.app.use(bodyParser.json());
    }
    routes() {
        // this.app.use(this.apiPaths.auth, authRoutes);
        this.app.use(this.apiPaths.rol, rol_routes_1.default);
        this.app.use(this.apiPaths.persona, persona_routes_1.default);
        this.app.use(this.apiPaths.usuario, usuario_routes_1.default);
        this.app.use(this.apiPaths.biblio, biblioteca_routes_1.default);
        this.app.use(this.apiPaths.genero, genero_routes_1.default);
        this.app.use(this.apiPaths.autor, autor_routes_1.default);
        this.app.use(this.apiPaths.editorial, editorial_routes_1.default);
        this.app.use(this.apiPaths.coleccion, coleccion_routes_1.default);
        this.app.use(this.apiPaths.libro, libro_routes_1.default);
        this.app.use(this.apiPaths.autorpert, autorpert_routes_1.default);
        this.app.use(this.apiPaths.tgenero, tgenero_routes_1.default);
        this.app.use(this.apiPaths.slibro, slibro_routes_1.default);
        this.app.use(this.apiPaths.donador, donador_routes_1.default);
        this.app.use(this.apiPaths.nota_entrega, nota_entrega_routes_1.default);
        this.app.use(this.apiPaths.nota_salida, nota_salida_routes_1.default);
        this.app.use(this.apiPaths.libro_catalogo, libro_catalogo_routes_1.default);
        this.app.use(this.apiPaths.prestamo, prestamo_routes_1.default);
        this.app.use(this.apiPaths.detprestamo, detprestamo_routes_1.default);
    }
    listen() {
        this.app.listen(this.port, () => {
            console.log("Servidor corriendo en le puerto : " + this.port);
        });
    }
}
exports.Server = Server;
//# sourceMappingURL=server.js.map