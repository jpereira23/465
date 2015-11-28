class TopicsController < ApplicationController 
  before_action :set_topic, only: [:show, :edit, :update, :destroy]
  helper_method :config_time 

def config_time(db_time) 
  t = `date +%H`
  t = t.to_i
  db_time = db_time.to_i
  
  if t < db_time 
  then 
    solution = db_time -t 
    clock = 24 - db_time
    return clock + solution 
  elsif t==db_time 
    return 0
  else 
    return t - db_time
  end 
end 
 
def index 
  @topics = Topic.all
end 
 
def show 
  
  @h = Topic.find(params[:id]) 
  @h.view = @h.view + 1  
  @h.save

end 
 
def new 
  @topic = Topic.new 
  @number = `date +%H`
end 
 
def edit 
end 

def create 
  @topic = Topic.new(topic_params)

  if @topic.save 
    redirect_to @topic, notice: 'Topic was successfully created.'
  else 
    render_to :new 
  end 
end 

def update 
  if @topic.update(topic_params) 
    redirect_to @topic, notice: 'Topic was successfully updated.' 
  else 
    render :edit 
  end 
end 

def destroy 
  @topic.destroy 
  redirect_to topics_url 
end 

private 
  def set_topic 
    @topic = Topic.find(params[:id]) 
  end 
  
  def topic_params 
    params.require(:topic).permit(:title, :description, :hour, :view)
  end
end 
