require 'spec_helper'

describe PhoneNumber do
  before(:each) do 
    @person = Person.create(first_name: "Tony", last_name: "Starks")
    @phone_number = @person.phone_numbers.create(number: "2404322210")
  end

  it "should be valid" do
    expect(@phone_number).to be_valid
  end

  it "should be associated with a person" do
    expect(@phone_number).to respond_to(:person)
  end

  it "should not be valid without a number" do
    @phone_number.number = nil
    expect(@phone_number).to_not be_valid
  end

  it "should not be valid without a person" do
    @phone_number.person = nil
    expect(@phone_number).to_not be_valid
  end
end
