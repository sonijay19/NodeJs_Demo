/*import { connect, Schema, model } from 'mongoose';

connect('mongodb://localhost:27017/Information',{ useNewUrlParser: true })
    .then(()=>console.log('Now connected to MongoDB'))
    .catch(err => console.error('something going wrong',err));


const RagchemSchema = new Schema({
    _id : String,
    cName : String,
    cmobNo : String,
    cAddress : String,
    cCity : String,
    cPincode : String,
    cPassword : String,
    domain : String
});

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

const RegChem = model('RegChem',RagchemSchema);
const RegLabChem = model('RegLabChem',RegLabChemSchema);
const PatInfo = model('PatInfo',PatInfoSchema);

export default {RegChem,RegLabChem,PatInfo};
*/