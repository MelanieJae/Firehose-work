class QuotesController < ApplicationController
	def index
		@quote = Quote.order("RANDOM()").first
# @quote is variable, first quote in database Quote
# is now the string-type value of @quote		
	end	
end
