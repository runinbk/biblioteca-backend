import { Request, Response } from "express";
import LCatalogo from "../models/libro_catalogo.model";

export const gets = async (req: Request, res: Response) => {
    const obj = await LCatalogo.findAll();

    res.json({ obj })
}

export const get = async (req: Request, res: Response) => {
    const { id } = req.params;
    const obj = await LCatalogo.findByPk(id);
    if (obj) {
        res.json({ obj });
    } else {
        res.status(404).json({
            msg: `No existe una LCatalogo con el id : ${id}`
        })
    }
}

export const post = async (req: Request, res: Response) => {
    const { body } = req;
    try {
        const obj = new LCatalogo(body);
        await obj.save();
        res.json({
            msg: 'La LCatalogo se creo correctamente',
            obj
        })
    } catch (error) {
        console.log(error);
        res.status(500).json({
            msg: 'Hable con el administrador'
        })
    }
}

export const put = async (req: Request, res: Response) => {
    const { body } = req;
    const { id } = req.params;

    try {
        const obj = await LCatalogo.findByPk(id);
        if (!obj) {
            return res.status(404).json({
                mensaje: `No existen una LCatalogo con ese ID`,
            })
        }
        await obj.update(body);
        res.json({
            msg: `La LCatalogo con el id ${id} fue actualizado correctamente`,
            obj
        });
    } catch (error) {
        console.log(error);
        res.status(500).json({
            msg: 'Hable con el administrador'
        })
    }
}

export const delet = async (req: Request, res: Response) => {
    const { id } = req.params;
    const obj = await LCatalogo.findByPk(id);
    if (!obj) {
        return res.status(404).json({
            msg: 'No existe la LCatalogo con el id: ' + id
        })
    }
    await obj.destroy();
    res.json({
        msg: `La LCatalogo con el id ${id} fue eliminado permanentemente con exito..!!!`,
        obj
    })
}

export const deletState = async (req: Request, res: Response) => {
    const { id } = req.params;
    const obj = await LCatalogo.findByPk(id);
    if (!obj) {
        return res.status(404).json({
            msg: 'No existe la LCatalogo con el id : ' + id
        })
    }
    await obj.update({ state: false });
    res.json({
        msg: `La LCatalogo con el id ${id} fue eliminado con exito..!!!`,
        obj
    });
}