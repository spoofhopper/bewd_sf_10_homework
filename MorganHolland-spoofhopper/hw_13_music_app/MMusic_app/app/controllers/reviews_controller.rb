class ReviewsController < ApplicationController

  def create
    @song = Song.find(params[:song_id])
    @review = @song.reviews.create(review_params)
    redirect_to song_path(@song)
  end

  def destroy
    @song = Song.find(params[:song_id])
    @review = @song.reviews.find(params[:id])
    @review.destroy
    redirect_to song_path(@song)
  end

  private
    def review_params
      params.require(:review).permit(:reviewer, :body)
    end


end
