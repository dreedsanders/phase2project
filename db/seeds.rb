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

f1 = FitnessCoach.create(name: "Luis", gym: g1)
f2 = FitnessCoach.create(name: "Triston", gym: g1)
f3 = FitnessCoach.create(name: "Hadi", gym: g1)
f4 = FitnessCoach.create(name: "Ian", gym: g1)
f5 = FitnessCoach.create(name: "Regret", gym: g1)

m1 = Member.create(name: "Softie", gym: g1)
m2 = Member.create(name: "Dopey", gym: g1)
m3 = Member.create(name: "Big Lady", gym: g1)
m4 = Member.create(name: "Moody", gym: g1)
m5 = Member.create(name: "Morgan", gym: g1)
m6 = Member.create(name: "Jr", gym: g1)
m7 = Member.create(name: "Drake", gym: g1)
m8 = Member.create(name: "Tag", gym: g1)
m9 = Member.create(name: "Dunny", gym: g1)
m10 = Member.create(name: "Patty", gym: g1)
m11 = Member.create(name: "Lil Lady", gym: g1)

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
