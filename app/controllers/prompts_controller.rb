class PromptsController < ApplicationController

	def index
	end

	def show
		@prompt = PromptsData.find(params[:id])
	end

	def check(x = 0, y = 0)
		prompt = PromptsData.find(params[:id])
		real_answer = prompt.answer
		user_answer = params[:user_answer]
		nextprompt = (params[:id].to_i + 1).to_s

		if params[:id].to_i == PromptsData.maximum("id").to_i && user_answer == real_answer
			x += 1
			redirect_to finish_path
		elsif user_answer == real_answer
			redirect_to prompt_path(nextprompt)
		else
			# flash[:notice] = "Try Again"
			y += 1
			redirect_to prompt_path(prompt)
		end
		if x - y > 0
			total = x - y
		else
			total = 0
		end
	end

	def finish
		@totalprompts = PromptsData.maximum("id").to_i
		# @totalcorrect = total
	end

end
