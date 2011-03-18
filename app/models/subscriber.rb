class Subscriber < ActiveRecord::Base
	validates :Firstname, :length => { :minimum => 1 }
	validates :Lastname, :length => { :minimum => 1 }
	validates :email, :length => { :minimum => 5 }
	validates :password, :length => { :minimum => 8 }
end
