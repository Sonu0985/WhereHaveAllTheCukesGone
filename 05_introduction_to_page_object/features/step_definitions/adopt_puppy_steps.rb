Given(/^I am looking for a puppy to adopt$/) do
  @browser.goto 'http://puppies.herokuapp.com'
  @home_page = HomePage.new(@browser)
end

And(/^I adopt the first puppy$/) do
  @home_page.view_details_for_puppy(1)
  @details_page = DetailsPage.new(@browser)
  @details_page.adopt_me
  @shopping_cart_page=ShoppingCartPage.new(@browser)
end

And(/^I complete the adoption$/) do
  @shopping_cart_page.proceed_to_checkout
  @checkout_page=CheckoutPage.new(@browser)
end

And(/^I checkout using:$/) do |checkout_data_table|
  checkout_data = checkout_data_table.hashes.first
  @checkout_page.customer_name = checkout_data["name"]
  @checkout_page.address = checkout_data["address"]
  @checkout_page.email = checkout_data["email"]
  @checkout_page.payment_method = checkout_data["payment_method"]
  @checkout_page.place_order
end

And(/^I enter the name "([^"]*)"$/) do |name|
    @checkout_page.customer_name = name
end

And(/^I enter the address "([^"]*)"$/) do |address|
  @checkout_page.address = address
end

And(/^I enter the contact email "([^"]*)"$/) do |email|
  @checkout_page.email = email
end

And(/^I enter "([^"]*)" as the payment type$/) do |payment_method|
  @checkout_page.payment_method = payment_method
end

When(/^I place my order$/) do
  @checkout_page.place_order
end

Then(/^I should see the message "([^"]*)"$/) do |expected_message|
  fail unless @browser.text.include? expected_message
end
