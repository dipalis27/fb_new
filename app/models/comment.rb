class Comment < ApplicationRecord
	 belongs_to :post
	 has_one_attached :image
	 has_many :likes , as: :likeable
	 
	 
end
