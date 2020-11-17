<template>
  <div class="login">
    <h1 class="title">
      <strong>
        Login
      </strong>
    </h1>
    <div class="column is-half is-offset-one-quarter">
      <div class="field">
        <p class="control has-icons-left has-icons-right">
          <input
            v-model="email"
            class="input"
            type="email"
            placeholder="Email"
          />
          <span class="icon is-small is-left">
            <i class="fa fa-envelope"></i>
          </span>
          <span class="icon is-small is-right">
            <i class="fa fa-check"></i>
          </span>
        </p>
      </div>
      <div class="field">
        <p class="control has-icons-left">
          <input
            v-model="password"
            class="input"
            type="password"
            placeholder="Password"
          />
          <span class="icon is-small is-left">
            <i class="fa fa-lock"></i>
          </span>
        </p>
      </div>
      <div class="field">
        <p class="control">
          <button class="button is-primary is-rounded">
            Login
          </button>
        </p>
      </div>
    </div>
  </div>
</template>

<script>
import * as api from "@/controller/api";

export default {
  data() {
    return {
      password: "",
      email: ""
    };
  },
  methods: {
    loginSubmit: function() {
      if (api.login(this.email, this.password)) {
        alert("logged in");
      } else {
        alert("user not found");
      }
    }
  }
};
</script>
