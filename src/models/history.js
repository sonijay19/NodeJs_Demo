import { connect, Schema, model } from 'mongoose';

connect('mongodb://localhost:27017/Information',{ useNewUrlParser: true }).then(()=>{console.log('Now connected to MongoDB');}).catch(err => console.error('something going wrong',err));


const SubHistory = new Schema({
    _id : false,
    diseases : String,
    medicine : String,
    consaltant : String
});


const HistorySchema = new Schema({
    _id : String,
    history : [{
        _id : false,
        date : String,
        diseases : String,
        medicine : String,
        consaltant : String
    }]
});


export default model('Pati_History',HistorySchema);