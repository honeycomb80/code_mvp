class PromptsController < ApplicationController

	def index
	end

	def show
		@prompt = PromptsData.find(params[:id])
		@promptsData = PromptsData.new
	end

	def check
		prompt = PromptsData.find(params[:id])
		real_answer = prompt.answer
		user_answer = params[:user_answer]
		nextprompt = (params[:id].to_i + 1).to_s
		
		if user_answer == real_answer
			redirect_to prompt_path(nextprompt)
		else
			flash[:notice] = "Try Again"
			redirect_to prompt_path(prompt)

		end
		
	end

	# private
	# 	def answer_params
	# 		require
	# 	end

end
