class WorkoutTypesController < ApplicationController
  def index
    @workouttypes = WorkoutType.all
  end

  def show
    @workouttype = WorkoutType.find(params[:id])
  end

  def create
    @workouttype = WorkoutType.create(workout_type_params)
    redirect_to workouttype_path(@workouttype)
  end

  def new
    @workouttype = WorkoutType.new
  end

  def edit
    @workouttype = WorkoutType.find(params[:id])
  end

  def update
    @workouttype = TrainingSession.find(params[:id])
    @workouttype.update(workout_type_params)
    redirect_to workouttype_path(@workouttype)
  end

  def delete
    @workouttype = TrainingSession.find(params[:id])
    @workouttype.destroy
    redirect_to workouttype_path(@workouttype)
  end

  private
  def workout_type_params
    params.require(@workouttype).permit(
      :member_id,
      :fitness_coach_id,
      :workout_type_id,
      :gym_id
    )
  end

end
