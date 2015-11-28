class TopicsController < ApplicationController 
  before_action :set_topic, only: [:show, :edit, :update, :destroy] 
  
  def index 
  end
end
