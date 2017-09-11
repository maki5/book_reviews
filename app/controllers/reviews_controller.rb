class ReviewsController < ApplicationController

  before_action :authenticate_user!

  def create
    review = Review.create(permitted_params)
    review.user = current_user

    mes = review.save ? "created" : book.errors.full_messages

    respond_to do |format|
      format.html {redirect_to book_path(review.book_id), notice: mes}
    end
  end

  def permitted_params
    params.require(:review).permit(:body, :rating, :book_id)
  end
end