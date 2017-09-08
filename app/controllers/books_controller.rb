class BooksController < ApplicationController

  before_action :authenticate_user!

  def index
    @books = Book.all
  end

  def new
    @book = Book.new
  end

  def create
    book = Book.new(permitted_params)
    mes = book.save ? "created" : book.errors.full_messages
    puts mes
    respond_to do |format|
      format.html {redirect_to books_path, notice: mes}
    end
  end


  def permitted_params
    params.require(:book).permit(:title, :author, :image)
  end
end