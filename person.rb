require 'date'
class Person
 attr_accessor   :first_name, :last_name,:dob, :emailarray, :phonearray
	def initialize(fname, sname, dob)
		@dob = Date.parse(dob)
		@first_name = fname.capitalize
		@last_name = sname.capitalize
		@emailarray = []
		@phonearray = []
	end
	def full_name	
	 "#{first_name} #{last_name}"
	end
	def add_email(emailarray)
    @emailarray << emailarray
   	end
   	def remove_email(index_position)
    emailarray.delete_at(index_position)
    end
    def remove_phone(index_position)
    phonearray.delete_at(index_position)
    end
  	def add_phone(phonearray)
    @phonearray << phonearray
    end
    def to_s
    	"Joe Bloggs was born on #{dob}.\n\ Their email addresses are: #{emailarray}.\n\ 
    	Their phone numbers are #{phonearray}"
    end
    def print_details
    
    puts "\nDate of Birth: " + dob.strftime('%m %B %Y')+"\n"
    puts "Email Addresses: "
    emailarray.each do |address| puts "- " + address.to_s + "\n"
        end
    puts "\nPhone Numbers: "
    phonearray.each do |number| puts "- " + number.to_s + "\n"
        end
    end
end