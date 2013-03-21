require 'spec_helper'

describe "email_addresses/index" do
  before(:each) do
    assign(:email_addresses, [
      stub_model(EmailAddress),
      stub_model(EmailAddress)
    ])
  end

  it "renders a list of email_addresses" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
  end
end
