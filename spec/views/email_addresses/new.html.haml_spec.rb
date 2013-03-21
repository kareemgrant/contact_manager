require 'spec_helper'

describe "email_addresses/new" do
  before(:each) do
    assign(:email_address, stub_model(EmailAddress).as_new_record)
  end

  it "renders new email_address form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", email_addresses_path, "post" do
    end
  end
end
