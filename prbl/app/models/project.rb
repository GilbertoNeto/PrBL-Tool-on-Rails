class Project < ApplicationRecord
  belongs_to :teacher

  has_many :products, dependent: :destroy

  has_many :teams, dependent: :destroy

  has_many :rubrics, dependent: :destroy

  validates :title, presence: true, uniqueness: true
  validates :duration, presence: true
  validates :course, presence: true
  validates :course_level, presence: true
  validates :other_subject_area, presence: true
  validates :entry_event, presence: true
  validates :compentences, presence: true
  validates :onsite_people_facilities, presence: true
  validates :equipments, presence: true
  validates :materials, presence: true
  validates :community_resources, presence: true
  validates :reflection_methods, presence: true
  validates :institution, presence: true

  accepts_nested_attributes_for :products, reject_if: :all_blank, allow_destroy: true
end
