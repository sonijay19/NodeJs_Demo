var express = require('express');
var session = require('express-session');
var app = express();
var router = express.Router();
var mongoose = require('mongoose');
var bodyParser = require('body-parser');
const {RegChem,RegDoc,RegLabChem} = require('../src/models/InfoAll');
var loginroutes = require('./login');
var regroutes = require('./register');


router.use(bodyParser.json());
router.use(bodyParser.urlencoded({ extended: true }));
mongoose.Promise = global.Promise;
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


module.exports = router;
