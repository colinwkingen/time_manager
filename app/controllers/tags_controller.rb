class TagsController < ApplicationController

  def index
    @tags = Tag.all
  end

  def show
    @tag = Tag.find(params[:id])
  end

  def new
    @activity = Activity.find(params[:activity_id])
    @tag = Tag.new
  end

  def create
    @tag = Tag.new(tag_params)
    if @tag.save
      flash[:success] = "Tag Added"
      redirect_to  day_activities_path(@day)
    else
      render :new
    end
  end

  private
  def tag_params
    params.require(:tag).permit(:name)
  end

end
