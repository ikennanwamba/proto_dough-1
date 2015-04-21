class Post < ActiveRecord::Base
	#establishing relationship to users
	belongs_to :user
	# each post can have many evaluations
	has_many :evaluations
	validates_associated :evaluations

	validates :title, presence: true, uniqueness: true, length: { in: 5..60 }
	validates :tagline, :product_type, :customer, :task, :removing, :enabling, :category, presence: true 

	scope :search, lambda {|query| where(["name LIKE ?", "%#{query}%"]) }
end
