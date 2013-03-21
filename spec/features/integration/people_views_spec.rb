require 'spec_helper'
require 'capybara/rspec'

describe "the views for people", type: :request do 
  before(:all) do 
    @person = Person.create(first_name: "Kareem", last_name: "Grant")
    number_a = @person.phone_numbers.create(number: "2404905210")
    number_b = @person.phone_numbers.create(number: "2349058975")
    @email_address = @person.email_addresses.create(address: "reemo@reem.com")
  end

  describe "when looking at a single person" do
    before(:each) do
      visit person_path(@person)
    end

    it "should have edit links for each phone number" do
      @person.phone_numbers.each do |phone_number|
        page.should have_link("edit", href: edit_phone_number_path(phone_number))
      end
    end

    it "should have delete links for each phone number" do
      @person.phone_numbers.each do |phone_number| 
        page.should have_link("delete", href: phone_number_path(phone_number))
      end
    end

    it "link should no longer exist" do
      number = @person.phone_numbers.first
      page.click_link(href: phone_number_path(number))

      expect(current_path).to eq person_path(@person)
      page.should_not have_link("delete", href: phone_number_path(number))
    end

    it "should display each of the email addresses" do
      page.should have_selector('li', text: @email_address.address)
    end
  end

  describe "when viewing all people on the index page" do
    before(:each) do 
      visit people_path
    end

    context "email addresses" do
      it "should have edit links for each email address" do 
        @person.email_addresses.each do |email|
          page.should have_link("edit", href: edit_email_address_path(email)) 
        end 
      end
    end

  end
end
