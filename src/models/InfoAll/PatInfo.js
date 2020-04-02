import { connect, Schema, model } from 'mongoose';

connect('mongodb://localhost:27017/Information',{ useNewUrlParser: true })
    .then(()=>console.log('Now connected to MongoDB'))
    .catch(err => console.error('something going wrong',err));


const PatInfoSchema = new Schema({
    _id : String,
    pName : String,
    pGender : String,
    pDate : String,
    pEmail : String,
    pAddress : String,
    pCity : String,
    pState : String,
    pPincode : String,
    domain : String,
    pHeight : String,
    pWeight : String,
    pBlood : String,
});


export default model('PatInfo',PatInfoSchema);