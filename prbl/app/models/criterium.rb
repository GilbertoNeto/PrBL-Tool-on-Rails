class Criterium < ApplicationRecord
  belongs_to :rubric

  validates :name, presence: true
  validates :bellow_standard, presence: true
  validates :approaching_standard, presence: true
  validates :meeting_standard, presence: true

end
