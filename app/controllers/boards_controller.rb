class BoardsController < ApplicationController
  def index
    @boards = Board.all.order(created_at: :desc).page(params[:page]).per(5)
  end

  def new
    @board = Board.new
  end

  def create
    @board = Board.new(board_params)

    if @board.save
      flash[:notice] = '投稿しました！'
      redirect_to boards_path
    else
      flash[:notice] = '投稿に失敗しました'
      render :new, status: :unprocessable_entity
    end
  end

  private

  def board_params
    params.require(:board).permit(:name, :title, :board_image)
  end

end
