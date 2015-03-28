class Company < ActiveRecord::Base
  has_many :jobs
  belongs_to :state
end
