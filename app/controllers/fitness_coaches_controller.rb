class FitnessCoachesController < ApplicationController
  
  def index
    @fitnesscoaches = FitnessCoach.all
  end

  def show
    @fitnesscoach = FitnessCoach.find(params[:id])
  end

  def new
    @gyms = Gym.all
    @fitnesscoach = FitnessCoach.new
  end

  def create
    @fitnesscoach = FitnessCoach.create(fitness_coach_params)
    redirect_to fitness_coach_path(@fitnesscoach)
  end



  def edit
    @gyms = Gym.all
    @fitnesscoach = FitnessCoach.find(params[:id])
  end

  def update
    @fitnesscoach = FitnessCoach.find(params[:id])
    @fitnesscoach.update({
      name: params[:fitness_coach][:name],
      age: params[:fitness_coach][:age],
      gym_id: params[:fitness_coach][:gym_id],
  })
    redirect_to fitness_coach_path(@fitnesscoach)
  end

  def destroy
    @fitnesscoach = FitnessCoach.find(params[:id])
    @fitnesscoach.destroy
    redirect_to fitness_coaches_path
  end

  private
  def fitness_coach_params
    params.require(:fitness_coach).permit(:name, :age, :gym_id)
  end

end
