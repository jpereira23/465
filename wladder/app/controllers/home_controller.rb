class HomeController < ApplicationController



load "#{Rails.root}/lib/ladder.rb"

  @@words2 = dictionary[rand(4020)]
  @@words1 = dictionary[rand(4020)]

def index
  @w1 = @@words1	
  @w2 = @@words2
end 


def show
  @link = "~/465/wladder/app/views/home/index.html.erb"
  @text1 = params[:text1] 
  @text2 = params[:text2]   
  @text3 = params[:text3] 
  @text4 = params[:text4] 
  @text5 = params[:text5] 
  @w1 = @@words1
  @w2 = @@words2
  array = Array.new
  good_or_bad = Array.new 

  if !@w1.empty?
  then 
    array.push(@w1) 
    if word_in_dictionary @w1 
    then 
      @ww1 = "Legal Move" 
    else 
      @ww1 = "Illegal Move" 
    end 
  end
  if !@text1.empty?
  then 
   array.push(@text1) 
   if word_in_dictionary @text1 
   then 
     @ttext1 = "Legal Move" 
   else 
     @ttext1 = "Illegal Move" 
   end 
  end 
  if !@text2.empty?
  then 
    array.push(@text2) 
    if word_in_dictionary @text2
    then 
      @ttext2 = "Legal Move" 
    else 
      @ttext2 = "Illegal Move" 
    end 
  end
  if !@text3.empty?
  then 
   array.push(@text3) 
   if word_in_dictionary @text3
   then 
     @ttext3 = "Legal Move" 
   else 
      @ttext3 = "Illegal Move" 
   end 
  end 
  if !@text4.empty?
  then 
   array.push(@text4) 
   if word_in_dictionary @text4
   then 
     @ttext4 = "Legal Move"
   else 
     @ttext4 = "Illegal Move" 
   end 
  end 
   
  if !@text5.empty?
  then 
   array.push(@text5) 
   if word_in_dictionary @text5 
   then 
     @ttext5 = "Legal Move" 
   else 
     @ttext5 = "Illegal Move" 
   end 
  end 
  
  if !@w2.empty?
  then 
   array.push(@w2) 
    if word_in_dictionary @w2
    then 
      good_or_bad.push("Word Exists") 
    else 
      good_or_bad.push("Word Does not Exist") 
    end 
  end 
  @answer = ""

  @array_num = array.size
  if legal(array) 
  then 
    @answer = "You Won!!!! Good job" 
  else 
    @answer = "You lost..." 
  end 
 
   
  
  @@words2 = dictionary[rand(4020)]
  @@words1 = dictionary[rand(4020)]

end 


end
