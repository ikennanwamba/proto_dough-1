class Post < ActiveRecord::Base
	#establishing relationship to users
	belongs_to :user

	scope :search, lambda {|query| where(["name LIKE ?", "%#{query}%"]) }
end
