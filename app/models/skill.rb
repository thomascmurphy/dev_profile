class Skill < ActiveRecord::Base
  belongs_to :language
  belongs_to :parent, polymorphic: true

  scope :by_rating, -> { order('rating DESC') }
  scope :by_language, -> { order('language_id') }

end
