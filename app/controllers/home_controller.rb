class HomeController < ApplicationController
  before_action :authenticate_user!

  def index
    render json: { message: "protected route" }
  end
end
