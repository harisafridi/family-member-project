require 'spec_helper'

describe "Person Class - enteries in phonebook" do 
#overview of tests....
  it "should store and return personal information" do
	person = Person.new("joe", "bloggs", "1 Jan 1990")
  expect(person.dob.to_s).to eq "1990-01-01"
  expect(person.first_name).to eq "Joe"
  expect(person.last_name).to eq "Bloggs"
  expect(person.full_name).to eq "Joe Bloggs"
  end
#overview of tests....
  it "should add or delete inforamation" do
	person = Person.new("joe", "bloggs", "1 Jan 1990")
	expect(person.emailarray).to eq []
	person.add_email "joe@hotmail.com"
	person.add_email "haris@hotmail.com"
	expect(person.emailarray).to eq (["joe@hotmail.com","haris@hotmail.com"])
  end
end