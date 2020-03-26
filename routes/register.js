var express = require('express');
var router = express.Router();
var mongoose = require('mongoose');
var bodyParser = require('body-parser');
router.use(bodyParser.json());
router.use(bodyParser.urlencoded({ extended: true }));
mongoose.Promise = global.Promise;
const {RegChem,RegDoc,RegLabChem} = require('../src/models/InfoAll');


/* Register of Doctor */
router.all('/RegDoc',(req,res,next) => {
    let regdoc = new RegDoc({
      drName : req.body.drName,
      drmobNo : req.body.drmobNo,
      _id : req.body.drEmail,
      drPassword : req.body.drPassword,
      drLicense : req.body.drLicense,
      drCity : req.body.drCity,
      drPincode : req.body.drPincode,
      domain : req.body.domain,
    });
    regdoc.save().then(()=>{res.send('1');})
    .catch(err => console.error('something going wrong',err))
  });
  
  /* Register of Chemist */
  router.all('/RegChem',(req,res,next) => {
    let regchem = new RegChem({
      cName : req.body.cName,
      cmobNo : req.body.cmobNo,
      _id : req.body.cEmail,
      cAddress : req.body.cAddress,
      cCity : req.body.cCity,
      cPincode : req.body.cPincode,
      cPassword : req.body.cPassword,
      domain : req.body.domain,
    });
    regchem.save().then(()=>{res.send('1');})
    .catch(err => console.error('something going wrong',err))
  });
  
  /* Register of LabChemist */
  router.all('/RegLabChem',(req,res,next) => {
    let regchem = new RegLabChem({
      lName : req.body.lName,
      lmobNo : req.body.lmobNo,
      _id : req.body.lEmail,
      lLicense : req.body.lLicense,
      lAddress : req.body.lAddress,
      lCity : req.body.lCity,
      lPincode : req.body.lPincode,
      lPassword : req.body.lPassword,
      domain : req.body.domain,
    });
    regchem.save().then(()=>{res.send('1');})
    .catch(err => console.error('something going wrong',err))
  });

  module.exports = router;