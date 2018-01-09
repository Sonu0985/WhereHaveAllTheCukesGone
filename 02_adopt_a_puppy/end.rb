require 'watir'

browser = Watir::Browser.new(:chrome)

browser.goto 'http://puppies-app.herokuapp.com/'

browser.button(:value => 'View Details').click
browser.button(:value => 'Adopt Me!').click
browser.button(:value => 'Complete the Adoption').click

browser.text_field(:id => 'order_name').set 'Jim Bob'
browser.textarea(:id => 'order_address').set "123 Main Street\nCleveland, OH 44113"
browser.text_field(:id => 'order_email').set 'jimbob@atdd.com'
browser.select_list(:id => 'order_pay_type').select 'Check'
browser.button(:value => 'Place Order').click

fail 'Something went wrong adopting a puppy' unless browser.text.include? 'Thank you for adopting a puppy!'
