var express = require('express');
var app = express();
var router = express.Router();
var mongoose = require('mongoose');
var bodyParser = require('body-parser');
router.use(bodyParser.json());
router.use(bodyParser.urlencoded({ extended: true }));
mongoose.Promise = global.Promise;
const {RegChem,RegDoc,RegLabChem} = require('../src/models/InfoAll');
var loginroutes = require('./login');
var regroutes = require('./register');

/* GET home page. */
router.get('/', (req, res, next) => {
  res.render('Home/home');
});

/* => Login routers  */
router.use('/login',loginroutes);

/* => Register routers */
router.use('/reg',regroutes);

/* Welcome or Dashboard route */
router.all('/welcome',(req,res,next) => {
  res.render('Welcome/Doctor/dashboard');
});

/*  */
router.all('/docuser',(req,res,next) => {
  res.render('Welcome/Doctor/docuser');
});

/*  */
router.all('/patient',(req,res,next) => {
  res.render('Welcome/Doctor/patient');
});

/*  */
router.all('/table',(req,res,next) => {
  res.render('Welcome/Doctor/table');
});

/*  */
router.all('/history',(req,res,next) => {
  res.render('Welcome/Doctor/history');
});


module.exports = router;
