<template>  
  <div class = 'exercise'>
    <form>
    <div class="field is-grouped is-grouped-centered">
     <label class="label mx-2 my-2">Workout Name</label>
       <div class="mx-2 pb-2">
       <input class="input" type="text" placeholder="Workout">
       </div>
       
    <div class="control">
      <div class="px-2">
        <div class="select is-rounded">
          <select>
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
         <div class="">
         <input class="input " type="text" placeholder="Sets">
         </div>
        </div>
    </div>

    <div class="field is-grouped is-grouped-centered">
      <label class="label mx-2 my-2">Reps</label>
       <div class="control">
         <div class="">
         <input class="input " type="text" placeholder="Reps">
         </div>
        </div>
    </div>

      <div class="control pl-2">
        <button class="button is-primary is-rounded">Submit</button>
    </div>
    </div>
  </form>
  </div>
</template>

<script>
/*
  class Exercise{
    constructor(name,group,sets,reps){
      this.name = name;
      this.group = group;
      this.sets = sets;
      this.reps = reps
    }
  }
  var group = {};
  var input = 
  */
</script>

<style scoped>

</style>