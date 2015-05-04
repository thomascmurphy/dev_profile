class RatingsController < ApplicationController

  def show
    @rating = Rating.find(params[:id])
    render json:@rating
  end

  def create
    if user_signed_in?
      @rating = current_user.ratings.create(ratings_params)
      render json:@rating
    end
  end

  def update
    @rating = Rating.find(params[:id])
    if @rating.update(ratings_params)
      render json:@rating
    end
  end

  def destroy
    if user_signed_in?
      @rating = current_user.ratings.find(params[:id])
      @rating.destroy
      render json:@rating
    end
  end


  private
    def ratings_params
      params.permit(:rating)
    end

end
