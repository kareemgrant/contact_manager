require 'spec_helper'
require 'capybara/rspec'

describe "the views for people", type: :request do 
  before(:all) do 
    @person = Person.create(first_name: "Kareem", last_name: "Grant")
    number_a = @person.phone_numbers.create(number: "2404905210")
    number_b = @person.phone_numbers.create(number: "2349058975")
  end

  describe "when looking at a single person" do
    before(:all) do
      visit person_path(@person)
    end

    it "should have edit links for each phone number" do
      @peson.phone_numbers.each do |phone_number|
        page.should have_link("edit", href: edit_phone_number_path(phone_number))
        page.should have_link("edit", href: edit_phone_number_path(phone_number))
        page.should have_link("edit", href: edit_phone_number_path(phone_number))
      end
    end
  end
end
