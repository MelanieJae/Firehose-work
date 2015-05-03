class Quote < ActiveRecord::Base
# verify that a saying has been added by the user in the correct form field
# and that it is an appropriate length
	validates :saying, :presence => true, :length => { :maximum => 140, :minimum => 3 }
	validates :author, :presence => true, :length => { :maximum => 50, :minimum => 3}

#ask why this doesn't work
#	def author_initials
#		first_initial = self.author.to_s.chr
#		last_initial = self.author.split().pop.to_s.chr
#		puts first initial,last_initial
#			end
# or...
# #		firstname = splitname[0]
# 		lastname = splitname.pop
# 		@first_initial = firstname.to_s.chr
# 		@last_initial = lastname.to_s.chr
# 		puts @first_initial.concat(@last_initial)
#	end

  	def unique_tag
  		abbr = self.author.split(" ").collect do |sub_string|
  			sub_string[0]
    	end

    	abbr.join + '#' + self.id.to_s
    end

end