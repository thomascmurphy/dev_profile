class CodeSample < ActiveRecord::Base
  belongs_to :user
  has_many :skills, as: :parent

  accepts_nested_attributes_for :skills

  scope :by_date_completed, -> { order('date_completed DESC') }
end
