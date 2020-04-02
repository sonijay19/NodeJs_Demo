import { connect, Schema, model } from 'mongoose';

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

export default model('RegChem',RagchemSchema);