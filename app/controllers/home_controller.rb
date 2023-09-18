class HomeController < ApplicationController
  before_action :authenticate_user!
  def index 
  end 


  def scanner_page
  end 

  def profile 
    if current_user.id.to_i != params[:user_id].to_i
      redirect_to "/422" and return
    end     
  end 


end
