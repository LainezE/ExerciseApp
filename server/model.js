const mysql = require("mysql");
 var conn = mysql.createConnection({
      host: "sql9.freemysqlhosting.net",
      user: "sql9374344",
      password: "kQYidxUjqh",
      database: "sql9374344",
    });
    conn.connect();
    let myquery = "SELECT * FROM `EX_Fall_2020_Users`"; //you would replace this with q
    conn.query(myquery, function (error, results, fields) {  //you make your query here
        //if (error) throw error;
        //console.log(fields); 
        console.log(results);  //results come back as results
                                //error comes back as errors
                                //fields I have no idea. you dont need
        return results
      });
//this creates the database connection
//you would error check this connection to see if it fails but thats for another time :)
