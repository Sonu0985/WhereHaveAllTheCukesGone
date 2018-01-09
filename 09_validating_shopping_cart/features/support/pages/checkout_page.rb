class CheckoutPage
  include PageObject

  text_field(:customer_name, :id => 'order_name')
  text_area(:address, :id => 'order_address')
  text_field(:email, :id => 'order_email')
  select_list(:payment_method, :id => 'order_pay_type')
  button(:place_order, :value => 'Place Order')

  DEFAULT_DATA = {
    name: 'Your Name',
    address: '123 Address',
    email: 'email@domain.com',
    payment_method: 'Credit Card'
  }

  def checkout(checkout_data)
    data = DEFAULT_DATA.merge(checkout_data)
    self.customer_name = data[:name]
    self.address = data[:address]
    self.email = data[:email]
    self.payment_method = data[:payment_method]
    place_order
  end

end
