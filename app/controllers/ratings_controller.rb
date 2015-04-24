class RatingsController < ApplicationController

  def show
    @rating = Rating.find(params[:id])
    render json:@rating
  end

  def update
    @rating = Rating.find(params[:id])

    if @rating.update(ratings_params)
      render json:@rating
    end

  end





  private
    def ratings_params
      params.permit(:rating)
    end

end
