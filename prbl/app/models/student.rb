class Student < ApplicationRecord

  validates :name, presence: true
  validates :email, presence: true, uniqueness: true
  validates :institution, presence: true

  belongs_to :team
end
