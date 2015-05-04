class WorkEnvironment < ActiveRecord::Base
  has_many :ratings, as: :subject
  has_many :rating_descriptions, as: :rateable

  def get_rating_description(convert_rating)
    @rating_description = self.rating_descriptions.where(rating: convert_rating).first
    return @rating_description.description
  end

  def get_piped_rating_descriptions()
    @rating_descriptions = self.rating_descriptions.order(:rating).select(:description)
    @descriptions = @rating_descriptions.pluck(:description)
    return @descriptions.join('|')
  end

end
