require 'spec_helper'

describe "Person Class - enteries in phonebook" do 
#overview of tests....
  it "should srtore and return personal information" do
	person = Person.new("joe", "bloggs", "1 Jan 1990")
  
  expect(person.dob.to_s).to eq "1990-01-01"
  expect(person.first_name).to eq "Joe"
  expect(person.last_name).to eq "Bloggs"
  expect(person.full_name).to eq "Joe Bloggs"
  end
end