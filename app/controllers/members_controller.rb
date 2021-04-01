class MembersController < ApplicationController

  def index
    @members = Member.all
  end

  def show
    @member = Member.find(params[:id])
  end

  def new
    @gyms = Gym.all
    @member = Member.new
  end

  def create
    @member = Member.create(member_params)
      if @member.valid?
        redirect_to member_path(@member)
      else
        flash[:errors] = @member.errors.full_messages
        redirect_to new_member_path
      end
  end

  def edit
    @gyms = Gym.all
    @member = Member.find(params[:id])
  end

  def update
    # byebug
    @member = Member.find(params[:id])
    @member.update({
            name: params[:member][:name],
            age: params[:member][:age],
            gym_id: params[:member][:gym_id],
        })
    redirect_to member_path(@member)
  end

  def destroy
    @member = Member.find(params[:id])
    @member.destroy
    redirect_to members_path
  end

  private
  def member_params
    params.require(:member).permit(:name, :age, :gym_id)
  end

end
