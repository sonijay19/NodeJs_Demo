import { Router } from 'express';
import session from 'express-session';
var router = Router();
import bodyParser from 'body-parser';
import Pati_History from '../src/models/history.js';

router.all('/AddHistory',(req,res,next)=>{
    console.log(req.body.add_dis);
    console.log(req.body.add_med);
    console.log(req.body.add_con);
    let his = new Pati_History({
        _id : '9426980359',
        history : [{
            date : req.body.pat_date,
            diseases : req.body.add_dis.toString(),
            medicine : req.body.add_med.toString(),
            consaltant : req.body.add_con.toString()
        }]
    });
    const one = his.save().then(()=>{ req.session.email = '9426980359'; res.redirect('/jay/history');})
    .catch( () => {
        req.session.email = '9426980359';
        console.log('in catch');
        Pati_History.findOne({_id : '9426980359'},(err,pat)=>{
            pat.history.push({
                diseases : req.body.add_dis.toString(),
                medicine : req.body.add_med.toString(),
                consaltant :req.body.add_con.toString()
            });
            pat.save();
        });
        res.redirect('/jay/history');            
    });
});


export default router;