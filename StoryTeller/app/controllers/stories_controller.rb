class StoriesController < ApplicationController
  before_action :find_story, only: [:destroy, :show, :edit, :update]
  
  
  def index 
    @stories = Story.order('created_at DESC') 
  end 
  
  def new 
    @story = Story.new 
  end 
 
  def create 
    @story = Story.new(story_params) 
    if @story.save 
      flash[:success] = 'Your story was added!' 
      redirect_to root_path 
    else 
      render 'new'
    end 
  end 
  
  def edit 
  end 
  
  def update 
    if @story.destroy
      flash[:success] = 'The story was deleted!' 
    else 
      flash[:error] = 'Cannot delete this story...' 
    end 
    redirect_to root_path
  end 
  
  def show 
  end 
 
   
  before_action :load_activities, only: [:index, :show, :new, :edit]
  private 
 
  def load_activities 
    @activities = PublicActivity::Activity.order('created_at DESC').limit(20)
  end 
 
  def story_params 
    params.require(:story).permit(:title, :body) 
  end 
  
  def find_story
    @story = Story.find(params[:id])
  end 
end 
