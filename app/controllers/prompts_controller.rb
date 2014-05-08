class PromptsController < ApplicationController

	def index
	end

	def show
		@prompt = PromptsData.find(params[:id])
		@promptsData = PromptsData.new
	end

	def check
		binding.pry
	end

	# private
	# 	def answer_params
	# 		require
	# 	end

end
