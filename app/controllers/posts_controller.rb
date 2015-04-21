class PostsController < ApplicationController
  before_action :authenticate_user!


	def index
    @posts = Post.all
  end

	def my_posts
		@my_posts = Post.where(user: current_user)
	end

  def show
    @post = Post.find(params[:id])
  end

  def new
    @post = Post.new
  end

	def edit
		@post = Post.find(params[:id])
	end

  def create
    # Instantiate a new object using for parameters
    @post = Post.new(post_params)
		@post.user = current_user
    # Save the object
    if @post.save
    # If save succeeds, redirect to the index action
      flash[:notice] = "Post created successfully."
      redirect_to(:action => 'index')
    else
    # If save fails, redisplay the form so user cna fix problems
    render('new')
    end
  end

  def update
    # Find an existing object using for parameters
    @post = Post.find(params[:id])
    # Update the object
    if @post.update_attributes(post_params)
    # If update succeeds, redirect to the index action
      flash[:notice] = "Post updated successfully."
      redirect_to(:action => 'show', :id => @post.id)
    else
    # If update fails, redisplay the form so user cna fix problems
    render('edit')
    end
  end

  def destroy
  end

  private

    def post_params
    # same as using "params[:post]", except that it:
    # - raises an error if :post is not present
    # - allows listed attributes to be mass-assigned
      params.require(:post).permit(:category, :product_name, :tagline, :product_type, :customer, :task, :removing, :enabling, :competitor, :advising)
    end

end


