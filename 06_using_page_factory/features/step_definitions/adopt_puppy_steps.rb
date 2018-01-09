Given(/^I am looking for a puppy to adopt$/) do
  @browser.goto 'http://puppies.herokuapp.com'
end

And(/^I adopt the first puppy$/) do
  on(HomePage).view_details_for_puppy(1)
  on(DetailsPage).adopt_me
end

And(/^I complete the adoption$/) do
  on(ShoppingCartPage).proceed_to_checkout

end

And(/^I checkout using:$/) do |checkout_data_table|
  checkout_data = checkout_data_table.hashes.first
  on(CheckoutPage) do |page|
    page.customer_name = checkout_data["name"]
    page.address = checkout_data["address"]
    page.email = checkout_data["email"]
    page.payment_method = checkout_data["payment_method"]
    page.place_order
  end
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
