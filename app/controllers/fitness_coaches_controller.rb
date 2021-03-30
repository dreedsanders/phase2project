class FitnessCoachesController < ApplicationController
  
  def index
    @fitnesscoaches = FitnessCoach.all
  end

  def show
    @fitnesscoach = FitnessCoach.find(params[:id])
  end

  def create
    @fitnesscoach = FitnessCoach.create(fitness_coach_params)
    redirect_to fitnesscoach_path(@fitnesscoach)
  end

  def new
    @fitnesscoach = FitnessCoach.new
  end

  def edit
    @fitnesscoach = FitnessCoach.find(params[:id])
  end

  def update
    @fitnesscoach = FitnessCoach.find(params[:id])
    @fitnesscoach.update(fitness_coach_params)
    redirect_to fitnesscoach_path(@fitnesscoach)
  end

  def delete
    @fitnesscoach = FitnessCoach.find(params[:id])
    @fitnesscoach.destroy
    redirect_to fitnesscoach_path(@fitnesscoach)
  end

  private
  def fitness_coach_params
    params.require(@fitnesscoach).permit(
      :name,
      :age,
      :gym_id
    )
  end

end
