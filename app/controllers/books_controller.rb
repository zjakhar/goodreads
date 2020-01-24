class BooksController < ApplicationController

  def index
    @books = Book.all
  end

  def show
    @book = Book.find(params[:id])
    @reviews = @book.reviews
  end

  def new
    @book = Book.new
  end

  def create
    @book = Book.new(book_params)

    if @book.save
      flash[:notice] = "Good it worked"
      redirect_to @book
    else
      flash[:alert]
    end
  end

  private

  def book_params
    params.require(:book).permit(:title, :author)
  end
end
