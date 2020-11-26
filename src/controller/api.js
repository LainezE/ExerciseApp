const axios = require("axios");
const backend_url = "http://localhost:3000"; // has to be same as backend server

export function login(email, password) {
  try {
    return axios.get(backend_url + "/login", { headers: { 'email': email, 'password': password } });
  } catch (error) {
    console.log(error)
  }
}

export function signup(firstName, lastName, email, password) {
  try {
    return axios.post(backend_url + "/signup", {
      headers: { 'firstName': firstName, 'lastName': lastName, 'email': email, 'password': password }
    })
      .then(function (response) {
        console.log(response.data);
      });
  } catch (error) {
    console.log(error);
  }
}

export function addWorkout(Ownerid, exerciseType, sets, reps, weight){
  try {
    return axios.post(backend_url + "/addWorkout", {
      headers: { 'Ownerid': Ownerid, 'exerciseType': exerciseType, 'sets': sets, 'reps': reps, 'weight': weight }
    })
      .then(function (response) {
        console.log(response.data);
      });
  } catch (error) {
    console.log(error);
  }
}

export function getWorkout(){
  return axios.get(backend_url + "/getWorkout");
}
