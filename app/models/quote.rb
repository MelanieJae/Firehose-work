class Quote < ActiveRecord::Base
# verify that a saying has been added by the user in the correct form field
# and that it is an appropriate length
	validates :saying, :presence => true, :length => { :maximum => 140, :minimum => 3 }
	validates :author, :presence => true, :length => { :maximum => 50, :minimum => 3}
end
