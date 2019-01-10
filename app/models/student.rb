class Student < ApplicationRecord
	has_many :comments
	has_many :exams
	has_many :cohorts, through: :exams

  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
end
