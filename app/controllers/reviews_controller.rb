class ReviewsController < ApplicationController
  def new
    @review = Review.new
    @song = Song.find(params[:song_id])
  end

  def create
    @review = Review.new(review_params)
    # find the right song
    @song = Song.find(params[:song_id])
    # assiogn to the review
    @review.song = @song
    if @review.save
      redirect_to song_path(@song)
    else
      render :new, status: :unprocessable_entity
    end
  end

  private

  def review_params
    params.require(:review).permit(:content)
  end
end
