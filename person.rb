require 'date'
class Person
 attr_accessor   :first_name, :last_name,:dob, :emailarray
	def initialize(fname, sname, dob)
		@dob = Date.parse(dob)
		@first_name = fname.capitalize
		@last_name = sname.capitalize
		@emailarray = []
	end
	def full_name	
		"#{first_name} #{last_name}"
	end
	def add_email(emailarray)
    @emailarray << emailarray
   end
   def show_email
    @emailarray.inspect
  end
end