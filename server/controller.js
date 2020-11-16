const express = require('express');
const app = express.Router();
const db = require('.model');


app.get('getall', function(request, response){//this is your first request
    let myquery = "SELECT * FROM `EX_Fall_2020_Users`";// you would replace this with q
    db.conn.query(myquery, function (error, results, fields) { // you make your query here
        if (error) console.log(error);
        console.log(results);  //results come back as results
                               // error comes back as errors
                                //fields I have no idea. you dont need
        return results
      });
})

app.get('adduser', function(request, response){ 
    let userID = request.get('id');
    let firstName = request.get('FirstName');
    let lastName = request.get('LastName');
    let dob = request.get('DOB');
    let password = request.get('password');
    let userType = request.get('User_Type');
    let myquery = 'INSERT INTO EX_Fall_2020_Users (id, FirstName, LastName, DOB, Password, User_Type) VALUES(' + userID + ', ' + firstName + ', ' +
        lastName + ', ' + dob + ', ' + password + ', ' + userType + ')'; //inserts a row into specified table
    console.log(myquery);
    db.conn.query(myquery, function (error, results, fields) {  //you make your query here
        if(error){
            console.log(error);
        }
        return results
      });
})

app.get('addworkout', function(request, response){ 
    let id = request.get('id');
    let createdat = request.get('created_at');
    let updatedat = request.get('updated_at');
    let myquery = "INSERT INTO TABLE (email, userid, password) VALUES( + name + , + userID + ,val3)"; //inserts a row into specified table
    db.conn.query(myquery, function (error, results, fields) {  //you make your query here
        if(error){
            console.log(error);
        }
        return results
      });
})

module.exports = app;
// then you'd make API calls to this controller. This controller will either set or return data
// const axios = require('axios');
// fetch(apiroot + adduser, POST, { name username, location location, age age, userID userID, accesstoken accesstoken }); client side