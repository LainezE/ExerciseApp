<template>
  <div class="signup">
    <div class="field is-grouped is-grouped-centered">
      <label class="label mx-2 my-2">Email</label>
      <div class="control">
        <input v-model="email" class="input" type="text" placeholder="Email" />
      </div>
    </div>

    <div class="field is-grouped is-grouped-centered">
      <label class="label mx-2 my-2">First Name</label>
      <div class="control">
        <input v-model="firstName" class="input" type="text" placeholder="John" />
      </div>

      <label class="label mx-2 my-2">Last Name </label>
      <div class="control">
        <input v-model="lastName" class="input" type="text" placeholder="Doe" />
      </div>
    </div>

    <div class="field is-grouped is-grouped-centered">
      <label class="label mx-2 my-2">Password </label>
      <div class="control">
        <input v-model="password" class="input" type="text" placeholder="******" />
      </div>
    </div>

    <div class="field">
      <p class="control">
        <button @click="signupSubmit" class="button is-primary is-rounded">
          Register
        </button>
      </p>
    </div>
  </div>
</template>

<script>
import * as api from "@/controller/api";

export default {
  data() {
    return {
      firstName: '',
      lastName: '',
      password: '',
      email: ''
    };
  },
  methods: {
    signupSubmit: function() {
      if (api.signup(this.firstName, this.lastName, this.email, this.password)) {
        alert("Registration Complete");
      } else {
        alert("Registration Failed");
      }
    }
  }
};
</script>
