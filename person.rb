require 'date'
class Person
 attr_accessor   :first_name, :last_name,:dob
	def initialize(fname, sname, dob)
		@dob = Date.parse(dob)
		@first_name = fname.capitalize
		@last_name = sname.capitalize

	end
	def full_name	
		"#{first_name} #{last_name}"
	end
end