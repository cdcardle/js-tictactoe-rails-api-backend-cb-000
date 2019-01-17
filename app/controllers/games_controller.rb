class GamesController < ApplicationController
  before_action :set_game, only: [:show, :edit, :update]

  def index
    @games = Game.all
  end

  def show
    render json: @game
  end

  def new
    @game = Game.new
  end

  def create
    @game = Game.create(params[:state])
    render json: @game, status: 201
  end

  def edit
  end

  def update
    @game.update(params[:state => []])
    render json: @game, status: 202
  end

  private
    def set_game
      @game = Game.find(params[:id])
    end

    def game_params
      params.permit(:state => [])
    end
end
