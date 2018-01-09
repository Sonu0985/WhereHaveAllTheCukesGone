Given(/^I am looking for a puppy to adopt$/) do
  @browser.goto 'http://puppies-app.herokuapp.com/'
end

And(/^I adopt the first puppy$/) do
  @browser.button(:value => 'View Details', :index => 0).click
  @browser.button(:value => 'Adopt Me!').click
end

And(/^I complete the adoption$/) do
  @browser.button(:value => 'Complete the Adoption').click
end

And(/^I enter the name "([^"]*)"$/) do |name|
  @browser.text_field(:id => 'order_name').value = name
end

And(/^I enter the address "([^"]*)"$/) do |address|
  @browser.textarea(:id => 'order_address').value = address
end

And(/^I enter the contact email "([^"]*)"$/) do |email|
  @browser.text_field(:id => 'order_email').value = email
end

And(/^I enter "([^"]*)" as the payment type$/) do |payment_method|
  @browser.select(:id => 'order_pay_type').select(payment_method)
end

When(/^I place my order$/) do
  @browser.button(:value => 'Place Order').click
end

And(/^I checkout using:$/) do |checkout_data_table|
  checkout_data = checkout_data_table.hashes.first
  @browser.text_field(:id => 'order_name').set(checkout_data["name"])
  @browser.textarea(:id => 'order_address').set(checkout_data["address"])
  @browser.text_field(:id => 'order_email').set(checkout_data["email"])
  @browser.select(:id => 'order_pay_type').select(checkout_data["payment_method"])
  @browser.button(:value => 'Place Order').click
end

Then(/^I should see the message "([^"]*)"$/) do |expected_message|
  fail unless @browser.text.include? expected_message
end
