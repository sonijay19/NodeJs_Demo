import express, { Router } from 'express';
var app = express();
var router = Router();
import { json, urlencoded } from 'body-parser';
router.use(json());
router.use(urlencoded({ extended: true }));
import { RegChem,RegLabChem } from '../src/models/InfoAll';
import RegDoc from '../src/models/InfoAll/RegDoc';

/* Register of Doctor */
router.all('/logDoc',(req,res,next) => {
    RegDoc.findById({_id:req.body.drEmail})
    .exec((err,RegDoc)=>{
        try{
            err ? 
            res.send('Pls register') :
            (RegDoc.drPassword == req.body.drPassWord ? (req.session.email = req.body.drEmail,res.send('1')): res.send('Password Is Wrong'));
        }catch(err){res.send('You do not register yet');}
    });
});


/* Register of Chemist */
router.all('/logchem',(req,res,next) => {
    RegChem.findById({_id:req.body.cEmail})
    .exec((err,RegChem)=>{
        try{
            err ? 
            res.send('Pls register') :
            (RegChem.cPassword == req.body.cPassword ? (req.session.email = req.body.cEmail,res.send('1')) : res.send('Password Is Wrong'));
        }catch(err){res.send('You do not register yet');}
    });
});


/* Login of LabChem */
router.all('/loglabchem',(req,res,next) => {
    RegLabChem.findById({_id:req.body.lEmail})
    .exec((err,RegLabChem)=>{
        try{
            err ? 
            res.send('Pls register') :
            (RegLabChem.lPassword == req.body.lPassword ? (req.session.email = req.body.lEmail,res.send('1')) : res.send('Password Is Wrong'));
        }catch(err){res.send('You do not register yet');}
    });
});


export default router;