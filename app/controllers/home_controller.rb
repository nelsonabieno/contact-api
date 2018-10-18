class HomeController < ApplicationController
  def index
    render json: { message: 'welcome to qontactsky contact mgt app'}, status: :ok
  end
end
