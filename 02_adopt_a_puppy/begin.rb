require 'watir'

browser = Watir::Browser.new(:chrome)

browser.goto('http://puppies-app.herokuapp.com/')

sleep 5

browser.close
