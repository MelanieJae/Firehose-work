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
		@quote = Quote.create(quote_params)
		if @quote.invalid?
			flash[:error] = '<strong>Could not save</strong> The data you entered is invalid.'	
		end	
		redirect_to root_path
	end

	private

	def quote_params
		params.require(:quote).permit(:saying, :author)
	end
end
