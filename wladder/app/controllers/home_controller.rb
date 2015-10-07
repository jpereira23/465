class HomeController < ApplicationController



load "#{Rails.root}/lib/ladder.rb"

  @@words2 = dictionary[rand(4020)]
  @@words1 = dictionary[rand(4020)]

def index
  @w1 = "cold"
  @w2 = "warm"
end 


def show
  @text1 = params[:text1] 
  @text2 = params[:text2]   
  @text3 = params[:text3] 
  @text4 = params[:text4] 
  @text5 = params[:text5] 
  @w1 = "cold"
  @w2 = "warm"
  array = Array.new
  array.push(@w1) 
  array.push(@text1) 
  array.push(@text2) 
  array.push(@text3)   
  array.push(@text4) 
  array.push(@text5) 
  array.push(@w2)
  @answer = ""
  if legal array 
  then 
    @answer = "You Won!!!! Good job" 
  else 
    @answer = "You lost..." 
  end 

end 


end
