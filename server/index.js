//import from package
const express = require('express');
const mongoose = require('mongoose');


//import from other files
const AuthRouter = require('./Routes/auth');

//initialisation
const app = express();
const PORT = 3000;
const DB = "mongodb+srv://sudhanshujha2717:sudhanshu@cluster0.c85fu3z.mongodb.net/?retryWrites=true&w=majority";

app.get('/',(req,res)=>{
res.send('hi');
});

//middleware
app.use(express.json());
app.use(AuthRouter);

//connections
mongoose.connect(DB).then(()=>{console.log('connected to MongoDb');}).catch((e)=>{console.log(e);});


app.listen(PORT,()=>{
console.log("Port started successfully");
});