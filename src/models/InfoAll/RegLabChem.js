import { connect, Schema, model } from 'mongoose';

connect('mongodb://localhost:27017/Information',{ useNewUrlParser: true })
    .then(()=>console.log('Now connected to MongoDB'))
    .catch(err => console.error('something going wrong',err));


const RegLabChemSchema = new Schema({
    _id : String,
    lName : String,
    lmobNo : String,
    lLicense : String,
    lAddress : String,
    lCity : String,
    lPincode : String,
    lPassword : String,
    domain : String
});


export default model('RegLabChem',RegLabChemSchema);