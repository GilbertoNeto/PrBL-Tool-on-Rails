class Teacher < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  validates :name, presence: true, uniqueness: true
  validates :email, presence: true, uniqueness: true
  validates :institution, presence: true
  validates :institutionCountry, presence: true
  validates :tipo, presence: true
  has_many :projects

  has_one :team

  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
end
