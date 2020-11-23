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
    
    console.log("api.js signup function")
    console.log(this.firstName);
    console.log(this.lastName);
    console.log(this.email);
    console.log(this.password);
    console.log("-----------------------");
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
