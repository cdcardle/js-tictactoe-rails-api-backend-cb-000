class GamesController < ApplicationController
  def index
    @games = Game.all
    render json: @posts, status: 200
  end

  def show
    @game = Game.find(params[:id])
    render json: @game
  end

  def new
    @game = Game.new
  end

  def create
    @game = Game.create(game_params)
    render json: @game, status: 201
  end

  def edit
    @game = Game.find(params[:id])
  end

  def update
    @game.update(game_params)
    redirect_to game_path(@game)
  end

  private
    def game_params
      params.require(:game).permit(:state)
    end
end
