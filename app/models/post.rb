class Post < ActiveRecord::Base
	#establishing relationship to users
	has_and_belongs_to_many :editors, :class_name => "User"

	scope :search, lambda {|query| where(["name LIKE ?", "%#{query}%"]) }
end
