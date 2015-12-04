class Setting < ActiveRecord::Base
	belong_to :user
		# after_create :defaults

 #    def defaults
	# 	self.frames ||= 1 
	# 	self.style ||= 1
	# 	self.skin ||= "white"
	# 	self.background ||= "white"
 #    end
end
