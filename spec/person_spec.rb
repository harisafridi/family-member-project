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
  it "should add or delete email and phone details" do
	person = Person.new("joe", "bloggs", "1 Jan 1990")
	expect(person.emailarray).to eq []
	person.add_email "haris@hotmail.com"
  person.add_email "joe@foo.com"
	expect(person.emailarray).to eq (["haris@hotmail.com","joe@foo.com"])
  person.remove_email(0)
  person.add_phone "0757577575"
  person.add_phone "239423480424"
  person.remove_phone(0)
  expect(person.phonearray).to eq (["239423480424"])
  #expect(person.to_s).to eq (1990-01-01)
  it "should check whether .to_s contains right information" do
  expect(person.to_s).to include("239423480424", "1990-01-01")
  end
end