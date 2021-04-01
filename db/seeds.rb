# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)


Member.destroy_all
FitnessCoach.destroy_all
TrainingSession.destroy_all
Gym.destroy_all
WorkoutType.destroy_all 

g1 = Gym.create(name: "Lozanos")
g2 = Gym.create(name: "All You Can Eat")
g3 = Gym.create(name: "Order From The Couch")


f1 = FitnessCoach.create(name: "Luis", age: 29, gym: g1)
f2 = FitnessCoach.create(name: "Triston", age: 28, gym: g1)
f3 = FitnessCoach.create(name: "Hadi", age: 27, gym: g1)
f4 = FitnessCoach.create(name: "Ian", age: 36, gym: g1)
f5 = FitnessCoach.create(name: "Regret", age: 31, gym: g1)

m1 = Member.create(name: "Softie", age: 29,password: "123", gym: g1)
m2 = Member.create(name: "Dopey", age: 25, password: "123", gym: g1)
m3 = Member.create(name: "Big Lady", age: 40, password: "123", gym: g1)
m4 = Member.create(name: "Moody", age: 31, password: "123", gym: g1)
m5 = Member.create(name: "Morgan", age: 30, password: "123", gym: g1)
m6 = Member.create(name: "Jr", age: 21, password: "123", gym: g1)
m7 = Member.create(name: "Drake", age: 25, password: "123", gym: g1)
m8 = Member.create(name: "Tag", age: 26, password: "123", gym: g1)
m9 = Member.create(name: "Dunny", age: 18, password: "123", gym: g1)
m10 = Member.create(name: "Patty", age: 20, password: "123", gym: g1)
m11 = Member.create(name: "Lil Lady", age: 51, password: "123", gym: g1)

w1 = WorkoutType.create(name: "Arms", gym: g1)
w2 = WorkoutType.create(name: "Legs", gym: g1)
w3 = WorkoutType.create(name: "Back", gym: g1)
w4 = WorkoutType.create(name: "Shoulders", gym: g1)

t1 = TrainingSession.create(member: m1, fitness_coach: f1, workout_type: w1, gym: g1)
t2 = TrainingSession.create(member: m2, fitness_coach: f2, workout_type: w2, gym: g1)
t3 = TrainingSession.create(member: m3, fitness_coach: f3, workout_type: w3, gym: g1)
t4 = TrainingSession.create(member: m4, fitness_coach: f4, workout_type: w4, gym: g1)
t5 = TrainingSession.create(member: m5, fitness_coach: f5, workout_type: w1, gym: g1)
t6 = TrainingSession.create(member: m6, fitness_coach: f1, workout_type: w2, gym: g1)
t7 = TrainingSession.create(member: m7, fitness_coach: f2, workout_type: w3, gym: g1)
t8 = TrainingSession.create(member: m8, fitness_coach: f3, workout_type: w4, gym: g1)
t9 = TrainingSession.create(member: m9, fitness_coach: f4, workout_type: w1, gym: g1)
t10 = TrainingSession.create(member: m10, fitness_coach: f5, workout_type: w2, gym: g1)
t11 = TrainingSession.create(member: m11, fitness_coach: f1, workout_type: w3, gym: g1)
t12 = TrainingSession.create(member: m1, fitness_coach: f2, workout_type: w4, gym: g1)
t13 = TrainingSession.create(member: m2, fitness_coach: f3, workout_type: w1, gym: g1)
t14 = TrainingSession.create(member: m3, fitness_coach: f4, workout_type: w2, gym: g1)
t15 = TrainingSession.create(member: m4, fitness_coach: f5, workout_type: w3, gym: g1)
t16 = TrainingSession.create(member: m5, fitness_coach: f1, workout_type: w4, gym: g1)
t17 = TrainingSession.create(member: m6, fitness_coach: f2, workout_type: w1, gym: g1)
t18 = TrainingSession.create(member: m7, fitness_coach: f3, workout_type: w2, gym: g1)