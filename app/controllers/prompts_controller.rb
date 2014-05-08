class PromptsController < ApplicationController

	def index
	end

	def show
		@prompt = PromptsData.find(params[:id])
		@userAnswer = PromptsData.new
	end

	private
		def answer_params
			require
		end

end
