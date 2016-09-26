class TagsController < ApplicationController

  def index
    @tags = Tag.all
  end

  def show
    @tag = Tag.find(params[:id])
  end

  def new
    @activity = Activity.find(params[:activity_id])
    @tag = @activity.tags.new
  end

  def create
    @activity = Activity.find(params[:activity_id])
    @tags = @activity.tags.all
    @tag = @activity.tags.create(tag_params)
    if @tag.save
      flash[:success] = "Tag Added"
      respond_to do |format|
        format.html { redirect_to new_day_activity_path(@activity.day_id) }
        format.js
      end
    else
      redirect_to root_path
    end
  end

  private
  def tag_params
    params.require(:tag).permit(:name)
  end
end
