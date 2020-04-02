import { Router } from 'express';
import session from 'express-session';
import { validate } from 'email-validator';
import RegDoc from '../src/models/InfoAll/RegDoc';
import RegChem from '../src/models/InfoAll/RegChem';
import RegLabChem from '../src/models/InfoAll/RegLabChem';
import PatInfo from '../src/models/InfoAll/PatInfo';
import { json, urlencoded } from 'body-parser';

var router = Router();
router.use(json());
router.use(urlencoded({ extended: true }));

router.use(session({'secret':'jay',saveUninitialized:true,resave:true}));

/* Register of Doctor */
router.all('/RegDoc',(req,res,next) => {
  console.log('in the regdoc');
  //if(validate(req.body.drEmail)){
  try {
    let regdoc = new RegDoc({
    _id : req.body.drEmail,
    drName : req.body.drName,
    drmobNo : req.body.drmobNo,
    drPassword : req.body.drPassword,
    drLicense : req.body.drLicense,
    drCity : req.body.drCity,
    drPincode : req.body.drPincode,
    domain : req.body.domain,
  });
    console.log('catch it');
    regdoc.save().then(()=>{ req.session.email = req.body.drEmail; res.send('1');})
    .catch(err => {res.send('soni'); console.log('something going wrong',err)})
  } catch(e) {
    console.log(e);
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

export default router;