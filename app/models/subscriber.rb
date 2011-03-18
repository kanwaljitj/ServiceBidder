class Subscriber < ActiveRecord::Base
	attr_accessor :Firstname, :Lastname, :email, :password

	validates :Firstname, :length => { :minimum => 1 }
	validates :Lastname, :length => { :minimum => 1 }
	validates :email, :length => { :minimum => 5 }
	validates :password, :length => { :minimum => 8 }
	
	def initialize(attributes = {})
		@firstname  = attributes[:Firstname]
		@lastname  = attributes[:Lastname]
		@email = attributes[:email]
		@password = attributes[:password]
	end
end
