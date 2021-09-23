class ReviewsController < ApplicationController
  before_action :set_message, only: [:show, :edit, :update, :destroy ]
  before_action :redirect_root, only: [:edit, :update, :destroy ]
  #before_action :move_to_index, except: [:index, :show, :search]

  def index
    @reviews = Review.includes(:user).order("created_at DESC").limit(16)
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

  def destroy
    @reviews.destroy
    redirect_to root_path
  end

  def edit
    unless current_user.id == @reviews.user_id
      redirect_to root_path
    end
  end

  def show
    @comment = Comment.new
    @comments = @reviews.comments.includes(:user)
  end

  def update
    @reviews.update(review_params)
    if @reviews.save
       redirect_to review_path
    else
      render :edit
    end
  end

  def search
    @reviews = Review.search(params[:keyword])
  end

  private

  def redirect_root
    redirect_to root_path unless current_user.id == @reviews.user_id
  end

  def review_params
    params.require(:review).permit(:image,:title,:detail,:genre_id,:directer,:starring,:rate).merge(user_id: current_user.id)
  end

  def set_message
    @reviews = Review.find(params[:id])
  end

end
