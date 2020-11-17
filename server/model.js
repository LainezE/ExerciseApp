const mysql = require("mysql");
 var conn = mysql.createConnection({
      host: "sql9.freemysqlhosting.net",
      user: "sql9374344",
      password: "kQYidxUjqh",
      database: "sql9374344",
    });
    conn.connect();
    let myquery = "SELECT * FROM `EX_Fall_2020_Users`"; 
    conn.query(myquery, function (error, results, fields) {  
        console.log(results);  
        return results
      });
