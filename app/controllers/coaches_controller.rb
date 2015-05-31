class CoachesController < ApplicationController

before_action :ensure_current_user_is_coach, :only =>[:update, :destroy, :edit, :create, :new]

def :ensure_current_user_is_coach
  @coaches = Coach.all
  if @favorite.bride_id #what is the condition? object belongs to a user
    redirect_to root_url, :alert =>"Only coaches can access the coaches section."
  end
end

  def index
    @coaches = Coach.all
  end

  def show
    @coach = Coach.find(params[:id])
  end

  def new
    @coach = Coach.new
  end

  def create
    @coach = Coach.new
    @coach.coach_name = params[:coach_name]

    if @coach.save
      redirect_to "/coaches", :notice => "Coach created successfully."
    else
      render 'new'
    end
  end

  def edit
    @coach = Coach.find(params[:id])
  end

  def update
    @coach = Coach.find(params[:id])

    @coach.coach_name = params[:coach_name]

    if @coach.save
      redirect_to "/coaches", :notice => "Coach updated successfully."
    else
      render 'edit'
    end
  end

  def destroy
    @coach = Coach.find(params[:id])

    @coach.destroy

    redirect_to "/coaches", :notice => "Coach deleted."
  end
end
