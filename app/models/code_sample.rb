class CodeSample < ActiveRecord::Base
  belongs_to :user
  has_many :ratings, as: :parent

  accepts_nested_attributes_for :ratings

  scope :by_date_completed, -> { order('date_completed DESC') }
end
