class Quote < ActiveRecord::Base
# verify that a saying has been added by the user in the correct form field
# and that it is an appropriate length
	validates :saying, :presence => true, :length => { :maximum => 140, :minimum => 3 }
	validates :author, :presence => true, :length => { :maximum => 50, :minimum => 3}

#ask why this doesn't work
#	def author_initials
#		first_initial = self.author.to_s.chr
#		last_initial = self.author.split().pop
#		puts first initial,last_initial
#			end
# #		firstname = splitname[0]
# 		lastname = splitname.pop
# 		@first_initial = firstname.to_s.chr
# 		@last_initial = lastname.to_s.chr
# 		puts @first_initial.concat(@last_initial)
	end

end