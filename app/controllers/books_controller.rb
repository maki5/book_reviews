class BooksController < ApplicationController

  before_action :authenticate_user!

  def index
    @books = Book.order(:title).page params[:page]
  end

  def new
    @book = Book.new
  end

  def show
    @book = Book.includes(:reviews).find(params[:id])
    @review = Review.new
  end

  def create
    book = Book.new(permitted_params)
    mes = book.save ? "created" : book.errors.full_messages

    respond_to do |format|
      format.html {redirect_to books_path, notice: mes}
    end
  end


  def permitted_params
    params.require(:book).permit(:title, :author, :image, :description)
  end
end