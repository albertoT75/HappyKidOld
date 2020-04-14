class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: [:home]

  def home
    @games = Games.all
  end

def dashboard
  @kids = current_user.kids
  # to do : add games
end

end
