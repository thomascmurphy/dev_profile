class Skill < ActiveRecord::Base
  belongs_to :user
  belongs_to :language
  belongs_to :job

  scope :by_rating, -> { order('rating DESC') }
  scope :by_language, -> { order('language_id') }

end
