require 'test_helper'

describe Evaluation do
	it "belongs to a post" do
		@post = posts(:good_post)
		@evaluation = Evaluation.create(post: @post)

		@evaluation.post.must_be_same_as @post
	end

	it "belongs to a user" do
		@user = users(:good_user)
		@evaluation = Evaluation.create(user: @user)

		@evaluation.user.must_be_same_as @user
	end

	it "belongs to a post and a user" do
		@user = users(:good_user)
		@post = posts(:good_post)
		@evaluation = Evaluation.create(user: @user, post: @post)

		@evaluation.user.must_be_same_as @user
		@evaluation.post.must_be_same_as @post
	end
end
