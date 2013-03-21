require 'spec_helper'
require 'capybara/rspec'

describe "the views for email addresses", type: :request do
  
  before(:all) do 
    @person = Person.create(first_name: "Tony", last_name: "Starks")
    @person.email_addresses.create(address: "starkco@ironman.com")
    @person.email_addresses.create(address: "tstarks@ironman.com")
  end

  describe "when adding a new email address" do 
  
    it "the form should be successfully submitted" do
      visit new_email_address_path(person_id: @person.id)

      within("#new_email_address") do
        fill_in 'email_address[address]', with: 'avengers@ironman.com'
      end

      click_button 'Save'
      
      expect(current_path).to eq person_path(@person)
      page.should have_text("avengers@ironman.com")
    end
  end

  describe "when editing an existing email address" do 
    
    let(:email){@person.email_addresses.first}

    it "the form should be successfully submitted" do 
      visit edit_email_address_path(email)

      within(".edit_email_address") do
        fill_in 'email_address[address]', with: 'starkandco@ironman.com'
      end

      click_button 'Save'

      expect(current_path).to eq person_path(@person)
      page.should have_text("starkandco@ironman.com")

    end
  end

  describe "when deleting an email address" do 
    
    before(:each) do

      visit person_path(@person)
    end

    context "people#show page" do
      it "should have delete links for each email address" do
        @person.email_addresses.each do |email|
          page.should have_link("delete", href: email_address_path(email))
        end
      end

      it "link should no longer exist" do
        email = @person.email_addresses.first
        page.click_link(href: email_address_path(email))

        expect(current_path).to eq person_path(@person)
        page.should_not have_link("delete", href: email_address_path(email))
      end
    end

  end

end
