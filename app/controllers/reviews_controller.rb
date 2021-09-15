class ReviewsController < ApplicationController
  def index
    @reviews = Review.all
  end

  def new
    @reviews = Review.new
  end

  def create
    @reviews = Review.new(review_params)
    if @reviews.save
      redirect_to root_path
    else
      render :new
    end
  end

  private

  def review_params
    params.require(:review).permit(:image,:title,:detail,:genre_id,:directer,:starring).merge(user_id: current_user.id)
  end

end
