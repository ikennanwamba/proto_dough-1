require 'test_helper'

describe User do
	it "is valid" do
		@user = users(:good_user)

		@user.valid?.must_equal true
	end

	it "has one or more evaluations" do
		@user = users(:good_user)

		5.times do
			@evaluation = Evaluation.create(user: @user, originality: 5, impact: 5, measurability: 5,
																		 practicality: 5, applicability: 5, comment: "good post")

			@user.evaluations.must_include @evaluation
		end

		@user.evaluations.count.must_equal 5
	end

	it "has one or more posts" do
		@user = users(:good_user)

		@post = posts(:good_post)
		@post.user = @user

		@user.posts.count.must_equal 1
	end
end
