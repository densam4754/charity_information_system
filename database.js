const mysql = require('mysql');

const connection = mysql.createConnection({
    host:"localhost",
    user:"root",
    database_name:"chais_db",
    password:"",
    port:"3306",

})

connection.connect(function(error){
    if(error)
    {
        console.log(error);

    }
    else{

        console.log("connection ok..!")
    }
});
connection.end();

module.export = connection;