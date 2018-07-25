var faker = require("faker");
var mysql = require("mysql");

var connection = mysql.createConnection({
    host: 'localhost',
    user: 'root',
    database: 'colt_mysql'
});


//                  SELECTING DATA

// var q = 'SELECT COUNT(*) AS total FROM email_users';

// connection.query(q, function(error, results, fields) {
//     if(error) throw error;
//     console.log(results[0].total);
// });

//                  INSERTING DATA (Hard Code (static))

// var q = 'INSERT INTO email_users (email) VALUES ("email@gmail.com") ';

// connection.query(q, function(error, results, fields) {
//     if(error) throw error;
//     console.log(results);
// });

//                  INSERTING DATA (dynamic)

// var person = {email: faker.internet.email()};

// connection.query('INSERT INTO email_users SET ?', person , 
//                 function(error, results) {
//     if(error) throw error;
//     console.log(results);
// });

// connection.end();

//                INSERTING DATA (dynamic)

// var person = {
//     email: faker.internet.email(),
//     created_at: faker.date.past()
// };

// var end_result = connection.query('INSERT INTO email_users SET ?', person , 
//                 function(error, results) {
//     if(error) throw error;
//     console.log(results);
// });

// console.log(end_result.sql);

//                 Inserting lots of dynamic data


//Create an array of 500 elements
var data = [];

for(var i=0; i<500; i++) {
    data.push([
        faker.internet.email(),
        faker.date.past()
    ]);
}
//----------------------------------------

//Insert array into connection as q
var q = 'INSERT INTO email_users (email, created_at) VALUES ?';

connection.query(q, [data], function(error, result) {
    console.log(error);
    console.log(result);
});

connection.end();
