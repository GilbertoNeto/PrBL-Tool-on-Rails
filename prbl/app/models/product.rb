class Product < ApplicationRecord
  belongs_to :project

  validates :name, presence: true
  validates :team_or_individual, presence: true
  validates :due_date, presence: true

end
