class Instructor < ApplicationRecord
has_many :articles
has_many :comments
has_many :cohorts
has_many :exams

  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
end
