class ReviewsController < ApplicationController


def index

end

def new
  @book = Book.find(params[:book_id])
  @review = Review.new

end

def create
  @review = Review.new(review_params)
  @book = Book.find(params[:book_id])
  @review.book = @book

  if @review.save
    flash[:notice] = "OMG YOU MADE A REVIEW GOOD JOB"
    redirect_to @book
  else
    flash.now[:alert] = @review.errors.full_messages.to_sentence
    render :new
  end
end

private

def review_params
  params.require(:review).permit(:rating, :body)
end

end
