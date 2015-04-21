class Evaluation < ActiveRecord::Base
	belongs_to :user
	belongs_to :post

	validates :originality, :impact, :measurability, :practicality, :applicability, presence: true,
		numericality: { only_integer: true, greater_than_or_equal_to: 1, less_than_or_equal_to: 5 }  
	validates :comment, presence: true, length: { in: 3..140 }

end
