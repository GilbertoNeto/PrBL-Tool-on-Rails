class Team < ApplicationRecord

  validates :name, presence: true, uniqueness: true
  validates :coach, presence: true

  belongs_to :project
  belongs_to :teacher

  has_many :students, dependent: :destroy

accepts_nested_attributes_for :students, reject_if: :all_blank, allow_destroy: true
  # validates :project, uniqueness: true

end
