class Post < ActiveRecord::Base
	has_many :comments, dependent: :destroy
#ensures that all posts have title that is at least 5 characters long	
	validates :title, presence: true,
						length: { minimum: 5} 
					end
