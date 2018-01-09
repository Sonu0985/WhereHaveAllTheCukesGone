Given(/^I am looking for a puppy to adopt$/) do
  @browser.goto 'http://puppies.herokuapp.com'
end

And(/^I adopt the first puppy$/) do
  on(HomePage).view_details_for_puppy(1)
  on(DetailsPage).adopt_me
end

And(/^I adopt the second puppy$/) do
  on(HomePage).view_details_for_puppy(2)
  on(DetailsPage).adopt_me
end

When("I adopt another puppy") do
  on(ShoppingCartPage).continue_shopping
end

And(/^I complete the adoption$/) do
  on(ShoppingCartPage).proceed_to_checkout
end

And(/^I checkout using:$/) do |checkout_data_table|
  checkout_data = checkout_data_table.hashes.first
  on(CheckoutPage).checkout(checkout_data)
end

When("I checkout using {string}") do |payemnt_method|
  on(CheckoutPage).checkout({"payment_method": payemnt_method })
end

And(/^I enter the name "([^"]*)"$/) do |name|
    on(CheckoutPage).customer_name = name
end

And(/^I enter the address "([^"]*)"$/) do |address|
  on(CheckoutPage).address = address
end

And(/^I enter the contact email "([^"]*)"$/) do |email|
  on(CheckoutPage).email = email
end

And(/^I enter "([^"]*)" as the payment type$/) do |payment_method|
  on(CheckoutPage).payment_method = payment_method
end

When(/^I place my order$/) do
  on(CheckoutPage).place_order
end

Then(/^I should see the message "([^"]*)"$/) do |expected_message|
  fail unless @browser.text.include? expected_message
end
