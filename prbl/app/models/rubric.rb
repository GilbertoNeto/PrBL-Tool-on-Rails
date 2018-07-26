class Rubric < ApplicationRecord
  belongs_to :project

  has_many :criteria, dependent: :destroy

  validates :name, presence: true
  validates :purpose_assessment, presence: true

  accepts_nested_attributes_for :criteria, reject_if: :all_blank, allow_destroy: true
end
