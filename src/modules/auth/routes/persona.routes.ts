import { Router } from "express";
import { check } from "express-validator";

import {
    get,
    gets,
    post,
    put,
    delet,
    deletState
} from "../controllers/persona.controller";

import validarCampos from "../../../middlewares/validar-campos";
import validarJWT from "../../../middlewares/validar-jwt";
// import { isAdminRole } from "../middlewares/validar-rol";

const router = Router();

router.get('/', [
    // validarJWT,
    //  isAdminRole,
    validarCampos
], gets);

router.get('/:id', [
    check('id').isInt().withMessage('El campo id debe ser un número entero'),
    // validarJWT,
    // isAdminRole,
    validarCampos
], get);

router.post('/', [
    // validarJWT,
    // isAdminRole,
    check('nombre', 'El nombre es obligatorio').not().isEmpty(),
    check('correo', 'El correo es obligatoria').not().isEmpty(),
    validarCampos
], post);

router.put('/:id', [
    check('id').isInt().withMessage('El campo id debe ser un número entero'),
    // validarJWT,
    // isAdminRole,
    validarCampos
], put);

router.delete('/del/:id', [
    check('id').isInt().withMessage('El campo id debe ser un número entero'),
    validarJWT,
    // isAdminRole,
    validarCampos
], delet);

router.delete('/:id', [
    check('id').isInt().withMessage('El campo id debe ser un número entero'),
    validarJWT,
    // isAdminRole,
    validarCampos
], deletState);

export default router;
