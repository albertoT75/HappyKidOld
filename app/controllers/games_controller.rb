class GamesController < ApplicationController

  def new
    @game = current_user.games.new
    # authorize @kid
  end

  def create
    @game = current_user.games.new(game_params)

    if @game.save
      flash[:notice] = 'A new game has been created and added to your profile!'
      redirect_to dashboard_path(current_user)
    else
      flash[:alert] = 'Something went wrong, please try again!'
      redirect_to new_game_path(@game)
    end
  end

  def destroy

    @game.delete
    flash[:notice] = 'Your game has been deleted!'
    redirect_to root_path
  end

  def edit

  end

  def update

    if @kid.update(kid_params)
      flash[:success] = "Your game's profile has been updated!"
      redirect_to dashboard_path(current_user)
    else
      flash[:alert] = 'Something went wrong, please try again!'
      redirect_to edit_game_path(current_user)
    end
  end

  private

  def game_params
    params.require(:game).permit(:kid_name)
  end

  def set_game
    @game = Game.find(params[:id])
  end

end


end
