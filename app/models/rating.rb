class Rating < ActiveRecord::Base
  belongs_to :parent, polymorphic: true
  belongs_to :subject, polymorphic: true

  scope :by_rating, -> { order('rating DESC') }
  scope :by_subject, -> { order('subject_id') }
  scope :subject_filter, -> (subject) { where subject_type: subject}

  after_initialize :init

    def init
      self.rating_min  ||= 0
      self.rating_max ||= 10
    end
end
