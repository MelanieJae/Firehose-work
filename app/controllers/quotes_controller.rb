class QuotesController < ApplicationController
	def index
		@quote = quote.first
# @quote is variable, first quote in database Quote
# is now the string-type value of @aquote		
	end	
end
