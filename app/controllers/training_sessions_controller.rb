class TrainingSessionsController < ApplicationController

  def index
    @trainingsessions = TrainingSession.all
  end

  def show
    @trainingsession = TrainingSession.find(params[:id])
    @member = Member.all
  end

  def create
    @trainingsession = TrainingSession.create(training_session_params)
    redirect_to trainingsession_path(@trainingsession)
  end

  def new
    @trainingsession = TrainingSession.new
  end

  def edit
    @trainingsession = TrainingSession.find(params[:id])
  end

  def update
    @trainingsession = TrainingSession.find(params[:id])
    @trainingsession.update(training_session_params)
    redirect_to trainingsession_path(@trainingsession)
  end

  def delete
    @trainingsession = TrainingSession.find(params[:id])
    @trainingsession.destroy
    redirect_to trainingsession_path(@trainingsession)
  end

  private
  def training_session_params
    params.require(:training_session).permit(
      :member_id,
      :fitness_coach_id,
      :workout_type_id,
      :gym_id
    )
  end

end
