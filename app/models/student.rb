class Student < ApplicationRecord
	has_many :comments
	has_many :exams, :dependent => :delete_all
	has_and_belongs_to_many :cohorts, optional: true

  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
end
