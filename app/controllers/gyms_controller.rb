class GymsController < ApplicationController
  def index
    @gyms = Gym.all
    @members = Member.all
    @workouttypes = WorkoutType.all
    @trainingsessions = TrainingSession.all 
    @fitnesscoaches = FitnessCoach.all
  end

  def show
  end

end
