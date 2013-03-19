module PhoneNumbersHelper
  def print_numbers(phone_numbers)
    if phone_numbers.count < 2
      # binding.pry
      phone_numbers.first.number
    else
      content_tag :ul do
        phone_numbers.collect do |phone_number|
         content_tag( :li, phone_number.number)
        end.join.html_safe
      end
    end
  end
end
