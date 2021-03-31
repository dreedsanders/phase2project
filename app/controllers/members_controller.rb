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
    # byebug
    @member = Member.create(member_params)
    redirect_to member_path(@member)
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
