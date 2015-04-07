class QuotesController < ApplicationController
	def index
		@quote = Quote.order("RANDOM()").first
# @quote is variable, first quote in database Quote
# is now the string-type value of @quote		
	end	

	def new
		@quote = Quote.new
	end

	def create
		Quote.create(quote_params)
		redirect_to root_path
	end

	private

	def quote_params
		params.require(:quote).permit(:saying, :author)
	end
end
