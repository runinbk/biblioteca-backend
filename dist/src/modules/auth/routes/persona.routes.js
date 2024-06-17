"use strict";
var __importDefault = (this && this.__importDefault) || function (mod) {
    return (mod && mod.__esModule) ? mod : { "default": mod };
};
Object.defineProperty(exports, "__esModule", { value: true });
const express_1 = require("express");
const express_validator_1 = require("express-validator");
const persona_controller_1 = require("../controllers/persona.controller");
const validar_campos_1 = __importDefault(require("../../../middlewares/validar-campos"));
const validar_jwt_1 = __importDefault(require("../../../middlewares/validar-jwt"));
// import { isAdminRole } from "../middlewares/validar-rol";
const router = (0, express_1.Router)();
router.get('/', [
    // validarJWT,
    //  isAdminRole,
    validar_campos_1.default
], persona_controller_1.gets);
router.get('/:id', [
    (0, express_validator_1.check)('id').isInt().withMessage('El campo id debe ser un número entero'),
    // validarJWT,
    // isAdminRole,
    validar_campos_1.default
], persona_controller_1.get);
router.post('/', [
    // validarJWT,
    // isAdminRole,
    (0, express_validator_1.check)('nombre', 'El nombre es obligatorio').not().isEmpty(),
    (0, express_validator_1.check)('correo', 'El correo es obligatoria').not().isEmpty(),
    validar_campos_1.default
], persona_controller_1.post);
router.put('/:id', [
    (0, express_validator_1.check)('id').isInt().withMessage('El campo id debe ser un número entero'),
    // validarJWT,
    // isAdminRole,
    validar_campos_1.default
], persona_controller_1.put);
router.delete('/del/:id', [
    (0, express_validator_1.check)('id').isInt().withMessage('El campo id debe ser un número entero'),
    validar_jwt_1.default,
    // isAdminRole,
    validar_campos_1.default
], persona_controller_1.delet);
router.delete('/:id', [
    (0, express_validator_1.check)('id').isInt().withMessage('El campo id debe ser un número entero'),
    validar_jwt_1.default,
    // isAdminRole,
    validar_campos_1.default
], persona_controller_1.deletState);
exports.default = router;
//# sourceMappingURL=persona.routes.js.map