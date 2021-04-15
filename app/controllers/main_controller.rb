class MainController < ApplicationController
  
  def index
    flash.now[:notice] = "Logged in Successfully"
    flash.now[:alert] = "Invalid email or Password"
  end
end