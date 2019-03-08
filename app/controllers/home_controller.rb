class HomeController < ApplicationController
  def index
    if user_signed_in?
      @apps = App.order(id: :desc).where user_id: current_user.id
      @app = App.new
    end
  end

    
end
