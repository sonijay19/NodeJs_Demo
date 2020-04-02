import express, { Router } from 'express';
import session from 'express-session';
import ejs from 'ejs';
let app = express();
let router = Router();
import { json, urlencoded } from 'body-parser';
import loginroutes from './login';
import regroutes from './register';
import addrouters from './add';
import Pati_History from '../src/models/history';
import PatInfo from '../src/models/InfoAll/PatInfo';

router.use(json());
router.use(urlencoded({ extended: true }));
router.use(session({'secret':'jay',saveUninitialized:true,resave:true}));


/* GET home page. */
router.get('/', (req, res, next) => {
  if(req.session.email){
    console.log(req.session.email);
    res.redirect('/jay/welcome');
  }
  res.render('Home/home');
});

/* => Login routers  */
router.use('/login',loginroutes);

/* => Add The history */
router.use('/add',addrouters);

/* Logout session or logout */
router.all('/logout', (req,res)=>{
  req.session.destroy((err)=>{
    res.header('Cache-Control', 'private, no-cache, no-store, must-revalidate');
    if(err){
      return console.log(err);
    }
    res.redirect('/jay');
  })
})

/* => Register routers */
router.use('/reg',regroutes);

/* Welcome or Dashboard route */
router.all('/welcome',(req,res,next) => {
  if(req.session.email){
    res.render('Welcome/Doctor/dashboard');
  }else{
    res.redirect('/jay');
  }
});

/* Display The History */
router.all('/history',(req,res,next)=>{
  if(req.session.email){
    let id = '9426980359';
    Pati_History.findById({_id:id})
    .exec((err,data)=>{
      res.render('Welcome/Doctor/history',{pat_his:data});
    });
  }else{
    res.redirect('/jay');
  }
});

/*  */
router.all('/docuser',(req,res,next) => {
  if(req.session.email){
    res.render('Welcome/Doctor/docuser');
  }else{
    res.redirect('/jay');
  }
});

/*  */
router.all('/patient',(req,res,next) => {
  if(req.session.email){
    res.render('Welcome/Doctor/patient');
  }else{
    res.redirect('/jay');
  }
});

/*  */  
router.all('/table',(req,res,next) => {
  if(req.session.email){
    res.render('Welcome/Doctor/table');
  }else{
    res.redirect('/jay');
  }
});

/*  */
router.all('/history',(req,res,next) => {
  if(req.session.email){
    res.render('Welcome/Doctor/history');
  }else{
    res.redirect('/jay');
  }
});

router.all('/search',(req,res,next)=>{
  if(req.session.email){
    let id = '9426980359';
    PatInfo.findById({_id:id})
    .exec((err,data)=>{
      console.log(data);
      res.send(data);
    });
  }else{
    res.redirect('/jay');
  }
});

export default router;
