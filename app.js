var mysql = require("mysql");
var inquirer = requre("enquirer");
var Table = require('cli-table');


var connection = mysql.createConnection({
    host: "",
    port: 3306,
    user: "root",
    password: "",
    database: ""
});

connection.connect(function(err){
    if (err) throw err;
    console.log(`connected as id${connection.threadId}`);
    connection.query("select * from items", function(err,res){
        if(err) throw err;
        console.log(res)
    });
});


function createItem(){
    console.log("inserting a new product \n");
    var query = connection.query(
        "insert into items set ?",
        {
            sellerID: "",
            year: "",
            make:
            model:
            condition:
            mileage:
            startingBid:
        }
    )
}

function updateBid(){
    console.log("your bid was" + currentBid + "\n");
    connection.query(
        ""
    )
}