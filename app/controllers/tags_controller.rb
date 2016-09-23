class TagsController < ApplicationController

  def index
    @tags = Tag.all
  end

  def show
    @tag = Tag.find(params[:id])
  end

  def new
    @tag = Tag.new
  end

  def create
    @tag = Tag.new(tag_params)
    @activity = Activity.find(params[:activity_id])
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
