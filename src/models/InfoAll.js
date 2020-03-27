const mongoose = require('mongoose');

mongoose.connect('mongodb://localhost:27017/Information',{ useNewUrlParser: true })
    .then(()=>console.log('Now connected to MongoDB'))
    .catch(err => console.error('something going wrong',err));


const RegdocSchema = new mongoose.Schema({
    _id : String,
    drName : String,
    drmobNo : String,
    drPassword : String,
    drLicense : String,
    drCity : String,
    drPincode : String,
    domain : String,
});

const RagchemSchema = new mongoose.Schema({
    _id : String,
    cName : String,
    cmobNo : String,
    cAddress : String,
    cCity : String,
    cPincode : String,
    cPassword : String,
    domain : String
});

const RegLabChemSchema = new mongoose.Schema({
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

const PatInfoSchema = new mongoose.Schema({
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

const RegChem = mongoose.model('RegChem',RagchemSchema);
const RegDoc = mongoose.model('RegDoc',RegdocSchema);
const RegLabChem = mongoose.model('RegLabChem',RegLabChemSchema);
const PatInfo = mongoose.model('PatInfo',PatInfoSchema);

module.exports = {RegChem,RegDoc,RegLabChem,PatInfo};