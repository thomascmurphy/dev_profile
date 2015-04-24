class Language < ActiveRecord::Base
  has_many :ratings, as: :subject
end
