class SessionsController < ApplicationController
  def new
  end
  
  def create
    # TODO: authenticate user
    flash["notice"] = "Nope."
    redirect_to "/login"
  end
end
