require 'spec_helper'

describe "email_addresses/show" do
  before(:each) do
    @email_address = assign(:email_address, stub_model(EmailAddress))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
  end
end
