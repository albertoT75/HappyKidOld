class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: [:home]

  def home
    # @games = Games.all
  end

  def dashboard


  end
end
