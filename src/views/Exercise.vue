<template>
  <div class="exercise">
    <div class="field is-grouped is-grouped-centered is-grouped-multiline">
      <label class="label mx-2 my-2">Workout Name</label>
      <div class="mx-2 pb-2">
        <input v-model="workoutName" class="input" type="text" placeholder="Workout Name" />
      </div>

      <div class="control">
        <div class="px-2">
          <div class="select is-rounded">
            <select v-model="muscleGroup">
              <option>Select a Muscle Group</option>
              <option>Chest</option>
              <option>Back</option>
              <option>Legs</option>
              <option>Arms</option>
              <option>Core</option>
            </select>
          </div>
        </div>
      </div>

      <div class="field is-grouped is-grouped-centered">
        <label class="label mr-2 my-2">Sets</label>
        <div class="control">
          <div class="Sets">
            <input class="input" type="text" placeholder="Sets" />
          </div>
        </div>
      </div>

      <div class="field is-grouped is-grouped-centered">
        <label class="label mx-2 my-2">Reps</label>
        <div class="control">
          <div class="">
            <input v-model="reps" class="input" type="text" placeholder="Reps" />
          </div>
        </div>
      </div>

      <div class="field is-grouped is-grouped-centered">
        <label class="label mx-2 my-2">Weight</label>
        <div class="control">
          <div class="">
            <input v-model="weight" class="input" type="text" placeholder="Weight" />
          </div>
        </div>
      </div>

      <div class="control pl-2">
        <button @click="addWorkout" class="button is-primary is-rounded">Submit</button>
      </div>
      <div class="control pl-2">
        <button class="button is-primary is-rounded">Remove</button>
      </div>
    </div>

    <div>
      <table class="table is-striped is-narrow is-hoverable is-fullwidth">
        <thead>
          <tr>
            <th>First Name</th>
            <th>Last Name</th>
            <th>Workout Name</th>
            <th>Muscle Group</th>
            <th>Sets</th>
            <th>Reps</th>
          </tr>
        </thead>
        <tbody>
                <tr v-for=" (x, i) in list " 
                      :key="i"
                      :i="i"
                      :post="x">
                    <th>{{x.id}}</th>
                    <td>{{x.FirstName}}</td>
                    <td>{{x.LastName}}</td>
                    <td>{{x.WorkoutName}}</td>
                    <td>{{x.MuscleGroup}}</td>
                    <td>{{x.sets}}</td>
                    <td>{{x.reps}}</td>
                </tr>
            </tbody>
      </table>
    </div>
  </div>
</template>

<script>
import * as api from "@/controller/api";

export default {
  data() {
    return {
      list: [],
      muscleGroup: '',
      sets: '',
      reps: '',
      weight: ''
    };
  },
  methods: {
    addWorkout: function() {
      if (api.addWorkout(this.muscleGroup, this.sets, this.reps, this.weight)) {
        alert("logged in");
      } else {
        alert("user not found");
      }
    }
  }
};
</script>