"use strict";
var __importDefault = (this && this.__importDefault) || function (mod) {
    return (mod && mod.__esModule) ? mod : { "default": mod };
};
Object.defineProperty(exports, "__esModule", { value: true });
const express_1 = require("express");
const genero_controller_1 = require("../controllers/genero.controller");
const express_validator_1 = require("express-validator");
const validar_campos_1 = __importDefault(require("../../../middlewares/validar-campos"));
const validar_jwt_1 = __importDefault(require("../../../middlewares/validar-jwt"));
const router = (0, express_1.Router)();
router.get('/', [
    // validarJWT,
    validar_campos_1.default
], genero_controller_1.gets);
router.get('/:id', [
    (0, express_validator_1.check)('id').isInt().withMessage('El campo id debe ser un número entero'),
    validar_jwt_1.default,
    validar_campos_1.default
], genero_controller_1.get);
// Crear usuario desde adm | Esto si te requiere token
router.post('/create', [
    validar_jwt_1.default,
    validar_campos_1.default
], genero_controller_1.post);
router.post('/', [
    validar_jwt_1.default,
    // check('nombre', 'El nombre es obligatorio').not().isEmpty(),
    // check('password', 'El password debe de ser de mas 6 de caracteres').isLength({ min: 6 }),
    // check('correo').custom(isEmailExist),
    validar_campos_1.default
], genero_controller_1.post);
router.put('/:id', [
    (0, express_validator_1.check)('id').isInt().withMessage('El campo id debe ser un número entero'),
    validar_jwt_1.default,
    validar_campos_1.default
], genero_controller_1.put);
router.delete('/del/:id', [
    (0, express_validator_1.check)('id').isInt().withMessage('El campo id debe ser un número entero'),
    validar_jwt_1.default,
    //    isAdminRole,
    validar_campos_1.default
], genero_controller_1.delet);
router.delete('/:id', [
    (0, express_validator_1.check)('id').isInt().withMessage('El campo id debe ser un número entero'),
    validar_jwt_1.default,
    validar_campos_1.default
], genero_controller_1.deletState);
exports.default = router;
//# sourceMappingURL=genero.routes.js.map