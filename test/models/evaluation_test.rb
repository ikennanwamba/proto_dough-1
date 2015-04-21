require 'test_helper'

describe Evaluation do
	it "belongs to a post" do
		@post = posts(:good_post)
		@evaluation = evaluations(:good_eval)
		@evaluation.post = @post

		@evaluation.post.must_be_same_as @post
	end

	it "belongs to a user" do
		@user = users(:good_user)
		@evaluation = evaluations(:good_eval)
		@evaluation.user = @user

		@evaluation.user.must_be_same_as @user
	end

	it "belongs to a post and a user" do
		@user = users(:good_user)
		@post = posts(:good_post)
		@evaluation = evaluations(:good_eval)
		@evaluation.user = @user
		@evaluation.post = @post

		@evaluation.user.must_be_same_as @user
		@evaluation.post.must_be_same_as @post
	end

	it "must have valid scores" do
		@evaluation = evaluations(:bad_eval_score)

		@evaluation.invalid?.must_equal true
	end

	it "must have valid comment" do
		@evaluation = evaluations(:bad_eval_comment)

		@evaluation.invalid?.must_equal true
	end
end
