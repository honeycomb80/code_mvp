class PromptsController < ApplicationController

	def index
	end

	def show
		@prompt = PromptsData.find(params[:id])
		@userAnswer = PromptsData.new answer_params
	end

	private
		def answer_params
			
		end

end
