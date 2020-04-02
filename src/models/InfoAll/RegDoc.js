import { connect, Schema, model } from 'mongoose';

connect('mongodb://localhost:27017/Information',{ useNewUrlParser: true })
    .then(()=>console.log('Now connected to MongoDB'))
    .catch(err => console.error('something going wrong',err));

const RegdocSchema = new Schema({
    _id : String,
    drName : String,
    drmobNo : String,
    drPassword : String,
    drLicense : String,
    drCity : String,
    drPincode : String,
    domain : String,
});


export default model('RegDoc',RegdocSchema);