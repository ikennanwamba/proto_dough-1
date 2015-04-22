class EvaluationsController < ApplicationController
	
	def index
		@evals = Evaluation.all
	end

	def my_evals
		@my_evals = Evaluation.where(user: current_user)
	end

	def show
	end

	def new
	end

	def create
	end

	def edit
	end

	def update
	end

	def destroy
	end

	private

	def eval_params
		params.require(:evaluation).permit(:originality, :impact, :applicability, :measurability, :practicality, :comment)
	end

end
