var express = require('express');
var session = require('express-session');
var emailvalidator = require('email-validator');
var router = express.Router();
var mongoose = require('mongoose');
var bodyParser = require('body-parser');
router.use(bodyParser.json());
router.use(bodyParser.urlencoded({ extended: true }));
mongoose.Promise = global.Promise;
const {RegChem,RegDoc,RegLabChem,PatInfo} = require('../src/models/InfoAll');
router.use(session({'secret':'jay',saveUninitialized:true,resave:true}));

/* Register of Doctor */
router.all('/RegDoc',(req,res,next) => {
  if(emailvalidator.validate(req.body.drEmail)){
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
    regdoc.save().then(()=>{ req.session.email = req.body.drEmail; res.send('1');})
    .catch(err => console.error('something going wrong',err))
  }else{
    res.send('EmailId is not Validate');
  }
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
  regchem.save().then(()=>{req.session.email = req.body.cEmail;res.send('1');})
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
  regchem.save().then(()=>{ req.session.email = req.body.lEmail; res.send('1');})
  .catch(err => console.error('something going wrong',err))
});

/* Register of Patient */
router.all('/patinfo',(req,res,next) => {
  let patinfo = new PatInfo({
    pName : req.body.pName,
    pGender : req.body.pGender,
    _id : req.body.pmobNo,
    pDate : req.body.pDate,
    pEmail : req.body.pEmail,
    pAddress : req.body.pAddress,
    pCity : req.body.pCity,
    pState : req.body.pState,
    pPincode : req.body.pPincode,
    pHeight : req.body.pHeight,
    pWeight : req.body.pWeight,
    pBlood : req.body.pBlood,
    domain : req.body.domain,
  });
  patinfo.save().then(()=>{ req.session.email = req.body.pmobNo; res.redirect('/jay/table');})
  .catch(err => console.error('something going wrong',err))
});

module.exports = router;