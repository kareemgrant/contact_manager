require 'spec_helper'

describe Person do

  before(:each) do 
    @person = Person.new(first_name: "Kareem", last_name: "Grant")
  end

  it "should be valid" do
    person = Person.new(first_name: "Tony", last_name: "Starks")
    expect(person).to be_valid
  end

  it "should not be valid without a first name" do
    @person.first_name = nil
    expect(@person).to_not be_valid
  end
  

  it "should not be valid without a last name" do
    @person.last_name = nil
    expect(@person).to_not be_valid
  end

  it "should have an array of phone numbers" do
    expect(@person.phone_numbers.class).to eq Array
  end
  
  it "should have an array of email addresses" do
    expect(@person.email_addresses.class).to eq Array
  end
end
