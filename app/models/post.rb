class Post < ApplicationRecord
	 belongs_to :user
	 has_one_attached :image
	 has_many :comment
	 has_many :likes, :as => :likeable



before_create :greeting_message
	 def  greeting_message
	 	puts "greet message"
	 end
end 