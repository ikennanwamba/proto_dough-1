require 'test_helper'

describe Post do
	it "posts model" do
		@post = Post.create

		@post.valid?.must_equal true	

	end
end
