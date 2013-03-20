require 'spec_helper'

describe EmailAddress do
  before(:each) do
    @person = Person.create(first_name: "Tony", last_name: "Starks")
    @email_address = @person.email_addresses.create(address: "tony@ironman.com")
  end

  it "should be valid" do
    expect(@email_address).to be_valid
  end

  it "should not be valid without an address specified" do
    @email_address.address = nil
    expect(@email_address).to_not be_valid
  end

  it "should be associated with a person" do
    expect(@email_address).to respond_to(:person)
  end

  it "should not be valid without a person" do
    @email_address.person = nil
    expect(@email_address).to_not be_valid
  end

end
