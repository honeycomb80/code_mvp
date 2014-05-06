class PromptsController < ApplicationController

	def show
		@prompt = PromptsData.find(params[:id])
	end

end
