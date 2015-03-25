class ActivitiesController < ApplicationController
  before_action :find_activity, only: [:show, :edit, :update, :destroy]
  def index
    @activities = Activity.all.order("date DESC")
  end

  def show
  end

  def new
    @activity = Activity.new
  end

  def create
    @activity = Activity.new(activity_params)
    if @activity.save
      redirect_to @activity
    else 
      render 'new'
    end
  end
 
  def edit
  end

  def update
  end

  def destroy
  end

  private
    def activity_params
      params.require(:activity).permit(:date, :activity, :distance, :duration)
    end

    def find_activity
      @activity = Activity.find(params[:id])
    end
end
