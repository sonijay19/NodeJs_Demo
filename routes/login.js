var express = require('express');
var app = express();
var router = express.Router();
var mongoose = require('mongoose');
var bodyParser = require('body-parser');
router.use(bodyParser.json());
router.use(bodyParser.urlencoded({ extended: true }));
mongoose.Promise = global.Promise;
const {RegChem,RegDoc,RegLabChem} = require('../src/models/InfoAll');


/* Register of Doctor */
router.all('/logDoc',(req,res,next) => {
    RegDoc.findById({_id:req.body.drEmail})
    .exec((err,RegDoc)=>{
        try{
            err ? 
            res.send('Pls register') :
            (RegDoc.drPassword == req.body.drPassWord ? res.send('1') : res.send('Password Is Wrong'));
        }catch{res.send('You do not register yet');}
    });
});


/* Register of Chemist */
router.all('/logchem',(req,res,next) => {
    RegChem.findById({_id:req.body.cEmail})
    .exec((err,RegChem)=>{
        try{
            err ? 
            res.send('Pls register') :
            (RegChem.cPassword == req.body.cPassword ? res.send('1') : res.send('Password Is Wrong'));
        }catch{res.send('You do not register yet');}
    });
});


/* Login of LabChem */
router.all('/loglabchem',(req,res,next) => {
    RegLabChem.findById({_id:req.body.lEmail})
    .exec((err,RegLabChem)=>{
        try{
            err ? 
            res.send('Pls register') :
            (RegLabChem.lPassword == req.body.lPassword ? res.send('1') : res.send('Password Is Wrong'));
        }catch{res.send('You do not register yet');}
    });
});


module.exports = router;