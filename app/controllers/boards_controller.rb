class BoardsController < ApplicationController
  def index
    @board = Board.all
  end
    
  def show
    @board = Board.find(board_params)
  end

  def new
    @board = Board.new
    @board = board.build
  end

  def create
    @board = board.build(board_params)

    if @board.save
      flash[:notice] = '投稿しました！'
      redirect_to boards_path
    else
      flash[:notice] = '投稿に失敗しました'
      render :new, status: :unprocessable_entity
    end
  end
end
