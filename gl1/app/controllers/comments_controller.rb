class CommentsController < ApplicationController 
  before_action :set_comment, only: [:edit, :update, :destroy]

def index 
  @topic = Topic.find params[:topic_id]

  @comments = @topic.comments
end 

def new 
  @topic = Topic.find params[:topic_id]
  @comment = @topic.comments.new
end

def edit
end

def create
  @topic = Topic.find params[:topic_id]
  @comment = @topic.comments.new(comment_params)
  

  if @comment.save 
    redirect_to topic_comments_url(@topic), notice: 'Comment was succesfylly created.'
  else 
    render :new
  end
end


def update 
  if @comment.update(comment_params)
    redirect_to topic_comments_url(@comment.topic), notice: 'Comment was succesfully created.'
  else 
    render :edit
  end 
end 

def destroy
  @comment.destroy
  redirect_to topic_comments_url(@comment.topic), notice: 'Comment was successfully destroyed.'
end 

private 


  def set_comment
    @comment = Comment.find(params[:id])
  end 
  
  def comment_params 
    params.require(:comment).permit(:description)
  end
end

