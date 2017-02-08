class HomeController < ApplicationController
  skip_before_action :authenticate_user!
  def index
    if current_user
      redirect_to posts_path
    end
  end
end
