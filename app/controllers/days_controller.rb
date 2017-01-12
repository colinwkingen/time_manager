class DaysController < ApplicationController
  def index
    if current_user
      @days = Day.all.where(user_id: current_user.id)
    else
      @days = []
    end
  end

  def show
    @day = Day.find(params[:id])
  end

  def new
    @day = Day.new
  end

  def create
    @day = Day.new(day_params)
    @day.user_id = current_user.id
    if @day.save
      flash[:success] = 'Day Added'
      redirect_to days_path
    else
      render :new
    end
  end

  def edit
    @day = Day.find(params[:id])
  end

  def update
    @day = Day.find(params[:id])
    if @day.update(day_params)
      flash[:success] = 'Day Updated'
      redirect_to days_path
    else
      render :edit
    end
  end

  def destroy
    @day = Day.find(params[:id])
    @day.destroy
    redirect_to days_path
  end

  private

  def day_params
    params.require(:day).permit(:date, :datefield)
  end

end
