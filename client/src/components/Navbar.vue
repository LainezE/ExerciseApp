<template>
  <nav class="navbar" role="navigation" aria-label="main navigation">
    <div class="navbar-brand">
      <a class="navbar-item" >
        <img src="../assets/weight.png" width="80" height="28" />
      </a>

      <a
        role="button"
        class="navbar-burger burger"
        aria-label="menu"
        aria-expanded="false"
        data-target="navbarBasicExample"
      >
        <span aria-hidden="true"></span>
        <span aria-hidden="true"></span>
        <span aria-hidden="true"></span>
      </a>
    </div>

    <div id="navbarBasicExample" class="navbar-menu">
      <div class="navbar-start">
        <a class="navbar-item">
          <button class="button is-rounded">
          <router-link to="/">Home</router-link>
          </button>
        </a>

        <a class="navbar-item">
          <button class="button is-rounded">
          <router-link to="/about">About</router-link>
          </button>
        </a>

        <a class = "navbar-item">
          <button class="button is-rounded">
          <router-link to="/exercise">Exercise</router-link>
          </button>
        </a>
      </div>

      <div class="navbar-end">
        <div class="navbar-item">
          <div class="buttons">
            <a class="button is-primary">
              <strong>
                <router-link to='/Signup'>Signup</router-link>
              </strong>
            </a>
            <a class="button is-light">
              <strong>
              <router-link to="/Login">Log in</router-link>
              </strong>
            </a>
          </div>
        </div>
      </div>
    </div>
  </nav>
</template>

<script>
export default {
  name: "Navbar",
  components: {}
};
</script>

<style scoped></style>
