class Comment < ApplicationRecord
	belongs_to :article
	belongs_to :instructor, optional: true
	belongs_to :student, optional: true
end
