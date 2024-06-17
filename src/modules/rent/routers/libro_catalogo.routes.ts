import { Router } from "express";
import {
    get,
    gets,
    post,
    put,
    delet,
    deletState
} from "../controllers/libro_catalogo.controller";
import { check } from "express-validator";
import validarCampos from "../../../middlewares/validar-campos";
import validarJWT from "../../../middlewares/validar-jwt";

const router = Router();

router.get('/', [
    // validarJWT,
    validarCampos
], gets);

router.get('/:id', [
    check('id').isInt().withMessage('El campo id debe ser un número entero'),
    validarJWT,
    validarCampos
], get);

// Crear usuario desde adm | Esto si te requiere token
router.post('/create', [
    validarJWT,
    validarCampos
], post);

router.post('/', [
    validarJWT,
    // check('nombre', 'El nombre es obligatorio').not().isEmpty(),
    // check('password', 'El password debe de ser de mas 6 de caracteres').isLength({ min: 6 }),
    // check('correo').custom(isEmailExist),
    validarCampos
], post);

router.put('/:id', [
    check('id').isInt().withMessage('El campo id debe ser un número entero'),
    validarJWT,
    validarCampos
], put);

router.delete('/del/:id', [
    check('id').isInt().withMessage('El campo id debe ser un número entero'),
    validarJWT,
    //    isAdminRole,
    validarCampos
], delet);

router.delete('/:id', [
    check('id').isInt().withMessage('El campo id debe ser un número entero'),
    validarJWT,
    validarCampos
], deletState);

export default router;
