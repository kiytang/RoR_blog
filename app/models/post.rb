class Post < ActiveRecord::Base
#ensures that all posts have title that is at least 5 characters long	
	validates :title, presence: true,
						length:{ minium:5}
end
