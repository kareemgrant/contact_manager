# require 'spec_helper'

# # Specs in this file have access to a helper object that includes
# # the PhoneNumbersHelper. For example:
# #
# # describe PhoneNumbersHelper do
# #   describe "string concat" do
# #     it "concats two strings with spaces" do
# #       helper.concat_strings("this","that").should == "this that"
# #     end
# #   end
# # end
# describe PhoneNumbersHelper do
#   describe "print_numbers" do

#     let(:number_a){ PhoneNumber.new(number: "1234567")}
#     let(:number_b){ PhoneNumber.new(number: "9876543")}

#     context "when there is more than one phone number" do 
#       it "should output a comma-separated list of phone nubmers" do
#         phone_numbers = [number_a, number_b]
#         expect(print_numbers(phone_numbers)).to eq "<ul><li>1234567</li><li>9876543</li></ul>"
#       end
#     end 

#     context "when there is only one phone number" do 
#       it "should output just one phone number" do
#         phone_numbers = [number_a]
#         expect(print_numbers(phone_numbers)).to eq "1234567"
#       end
#     end

#   end
# end

