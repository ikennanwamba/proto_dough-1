require 'test_helper'

describe Post do
	it "is valid" do
		@post = posts(:good_post)

		@post.valid?.must_equal true	
	end

	it "is not valid - due to title" do
		@post = posts(:bad_post_title)

		@post.valid?.must_equal false
	end

	it "is not valid - due to missing attributes" do
		@post = posts(:bad_post_missing_attrs)

		@post.valid?.must_equal false
	end

	it "belongs to one user" do
		@post = posts(:good_post)
		@user = users(:good_user)
		@post.user = @user 

		@post.user.must_be_same_as @user
	end

	it "has many evaluations" do
		@post = posts(:good_post)

		10.times do
			@evaluation = Evaluation.create(originality: 5, impact: 5, measurability: 5, 
																			practicality: 5, applicability: 5, comment: "Great post.")
			@post.evaluations << @evaluation

			@post.evaluations.must_include @evaluation
		end

		@post.evaluations.count.must_equal 10
	end

	it "will not include invalid evaluation" do
		@post = posts(:good_post)
		@evaluation = evaluations(:bad_eval_score)
		@post.evaluations << @evaluation

		@evaluation.invalid?.must_equal true
		@post.evaluations.count.must_equal 0
	end
end
