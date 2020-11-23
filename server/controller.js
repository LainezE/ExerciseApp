const express = require('express');
const app = express.Router();
const db = require('./model.js');

app.get('/getusers', function(request, response){
    let myquery = "SELECT * FROM `EX_Fall_2020_Users`";
    db.conn.query(myquery, function (error, results, fields) {
        if (error) console.log(error);
        console.log(results);  
        return results
      });
})

app.get('/getworkouts', function(request, response){
    let myquery = "SELECT * FROM `EX_Fall_2020_Workouts`";
    db.conn.query(myquery, function (error, results, fields) { 
        if (error) console.log(error);
        console.log(results);  
        return results
      });
})

app.get('/getfollowers', function(request, response){
    let myquery = "SELECT * FROM `EX_Fall_2020_Followers`";
    db.conn.query(myquery, function (error, results, fields) { 
        if (error) console.log(error);
        console.log(results); 
      });
})

app.post('/signup', function(request, response){ 
    console.log(" controller.js app.post");
    let userID = request.get('id');
    console.log(userID);
    let firstName = request.get('FirstName');
    console.log(firstName);
    let lastName = request.get('LastName');
    console.log(lastName);
    let password = request.get('password');
    console.log(password);
    let userType = 'user';
    console.log(userType);
    let email = request.get('Email');
    console.log(email);
    console.log("-------------------")
    let myquery = 'INSERT INTO EX_Fall_2020_Users (id, FirstName, LastName, DOB, Password, User_Type) VALUES(' + userID + ', ' + firstName + ', ' +
        lastName + ', ' + password + ', ' + userType + ')'; 
    console.log(myquery);
    db.conn.queryDatabase(myquery, function (error, results, fields) {  
        if(error){
            console.log(error);
        }
        return results
      });
})

app.get('/addworkout', function(request, response){ 
    let id = request.get('id');
    let createdat = request.get('created_at');
    let ownerId = request.get('Owner_id');
    let startTime = request.get('Start_Time');
    let endTime = request.get('End_Time');
    let exerciseType = request.get('Exercise_Type');
    let sets = request.get('Sets');
    let reps = request.get('Reps_Per_Set');
    let weight = request.get('Weight');
    let myquery = 'INSERT INTO EX_Fall_2020_Workouts (id, created_at, Owner_id, Start_Time, End_Time, Exercise_Type, Sets, Reps_Per_Set, Weight) VALUES(' + id + ', ' + createdat + ', ' 
        + ownerId + ', ' + startTime + ', ' + endTime + ', ' + exerciseType + ', ' + sets + ', ' + reps + ', ' + weight + ')';
    db.conn.query(myquery, function (error, results, fields) {  
        if(error){
            console.log(error);
        }
        return results
      });
})

app.get('/addfollowers', function(request, response){ 
    let id = request.get('id');
    let createdat = request.get('created_at');
    let followingId = request.get('Following_id');
    let followerId = request.get('Follower_id');
    let isAccepted = request.get('isAccepted');
    let myquery = 'INSERT INTO EX_Fall_2020_Followers (id, created_at, Following_id, Follower_id, isAccepted) VALUES(' + id + ', ' + createdat + ', ' 
        + followingId + ',' + followerId + ',' + isAccepted + ')';
    db.conn.query(myquery, function (error, results, fields) { 
        if(error){
            console.log(error);
        }
        return results
      });
})

app.get('/login', function(request, response){
    let email = request.get('email');
    let password = request.get('password');
    let myquery = "SELECT * FROM `EX_Fall_2020_Users` WHERE email = '" + email + "' AND password = '" + password + "'";
    let result = db.queryDatabase(myQuery).then(function(dbResult){
        if(dbResult.length > 0){
          console.log(dbResult)
          response.send(true);
        }
        else{
          response.send(false);
        }      
      });
})


module.exports = app;
// then you'd make API calls to this controller. This controller will either set or return data
// const axios = require('axios');
// fetch(apiroot + adduser, POST, { name username, location location, age age, userID userID, accesstoken accesstoken }); client side