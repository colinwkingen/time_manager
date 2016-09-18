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
    if @tag.save
      flash[:success] = "Tag Added"
      redirect_to  days_activities_path
    else
      render :root
    end
  end

  private
  def tag_params
    params.require(:tag).permit(:name)
  end

end
