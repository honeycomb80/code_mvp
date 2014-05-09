class PromptsController < ApplicationController

	def index
	end

	def show
		@prompt = PromptsData.find(params[:id])
		# if params[:id] == 1
		# 	cookies[:incorrect] = 0
		# end
	end

	def check
		prompt = PromptsData.find(params[:id])
		real_answer = prompt.answer
		user_answer = params[:user_answer]
		nextprompt = (params[:id].to_i + 1).to_s

		if params[:id].to_i == PromptsData.maximum("id").to_i && user_answer == real_answer
			redirect_to finish_path
		elsif user_answer == real_answer
			redirect_to prompt_path(nextprompt)
		else
			# cookies[:incorrect] += 1
			# flash[:notice] = "Try Again"
			redirect_to prompt_path(prompt)
		end
	end



	# inncorrect = 1

	def finish
		# binding.pry
		@totalprompts = PromptsData.maximum("id").to_i
		# @totalcorrect = @totalprompts - incorrect
	end

	private

	# def incorrect
	# 	session[:incorrect] ||= 0
	# end

	# def incorrect=(var)
	# 	session[:incorrect] = var
	# end

end
