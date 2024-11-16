
struct Exercise {
  var name: String
  var muscleGroups: [String]
  var reps: Int
  var sets: Int
  var totalReps: Int

  init(name: String, muscleGroups: [String], reps: Int, sets: Int) {
    self.name = name
    self.muscleGroups = muscleGroups
    self.reps = reps
    self.sets = sets
    self.totalReps = reps * sets
  }
}

struct Regimen {
  var dayOfWeek: String
  var exercises: [Exercise]

  init(dayOfWeek: String, exercises: [Exercise]) {
    self.dayOfWeek = dayOfWeek
    self.exercises = exercises
  }

  func printExercisePlan() {
    print("Today is \(self.dayOfWeek) and the plan is to:")
    for exercise in self.exercises {
      print("Do \(exercise.sets) sets of \(exercise.reps) \(exercise.name)s")
    }
  }
}

struct ExercisePlan {
  var name: String
  var plan: [Regimen]

  init(name: String, plan: [Regimen]) {
    self.name = name
    self.plan = plan
  }

  func printMyPlan() {
    print("Your plan: \(self.name)")
    for day in self.plan {
      print("On \(day.dayOfWeek) you are do:")
      for exercise in day.exercises {
        print("\(exercise.sets) x \(exercise.reps) of \(exercise.name)s")
      }
    }
  }
}

var pushUp = Exercise(name: "push-up", muscleGroups: ["Triceps", "Chest", "Shoulders"], reps: 10, sets: 3)
//print(pushUp)
var squat = Exercise(name: "squat", muscleGroups: ["Quadriceps", "Glutes", "Hamstrings"], reps: 12, sets: 3)

var burpee = Exercise(name: "burpee", muscleGroups: ["Chest", "Arms", "Legs", "Core"], reps: 8, sets: 3)

var sitUp = Exercise(name: "sit-up", muscleGroups: ["Core", "Upper Abs", "Lower Abs"], reps: 15, sets: 3)

var bicepCurl = Exercise(name: "bicep curl", muscleGroups: ["Biceps"], reps: 12, sets: 3)


var mondayRegimen = Regimen(dayOfWeek: "Monday", exercises: [pushUp])
//print(mondayRegimen)

var tuesdayRegimen = Regimen(dayOfWeek: "Tuesday", exercises: [burpee, sitUp])

var wednesdayRegimen = Regimen(dayOfWeek: "Wednesday", exercises: [bicepCurl, pushUp])

var thursdayRegimen = Regimen(dayOfWeek: "Thursday", exercises: [squat, sitUp])

var fridayRegimen = Regimen(dayOfWeek: "Friday", exercises: [burpee, bicepCurl])

var saturdayRegimen = Regimen(dayOfWeek: "Saturday", exercises: [pushUp, squat, sitUp])

var sundayRegimen = Regimen(dayOfWeek: "Sunday", exercises: [burpee, pushUp, bicepCurl])

mondayRegimen.printExercisePlan()

var myNewPlan = ExercisePlan(name: "First month", plan: [mondayRegimen, tuesdayRegimen, wednesdayRegimen, thursdayRegimen, saturdayRegimen, sundayRegimen])

myNewPlan.printMyPlan()
