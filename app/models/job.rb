class Job < ActiveRecord::Base
  belongs_to :user
  belongs_to :company
  belongs_to :location
  has_many :ratings, as: :parent
end
