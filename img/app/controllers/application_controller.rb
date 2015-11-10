class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception
  def image 
    @user = User.all 
    render template: "layouts/image.html.erb"
  end 

  def public 

    @images = Image.all 
    render template: "layouts/public.html.erb"
  end
    
end
