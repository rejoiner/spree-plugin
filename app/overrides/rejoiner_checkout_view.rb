Deface::Override.new(
  virtual_path: 'spree/checkout/edit',
  name: 'rejoiner_checkout_view',
  insert_before: '#checkout',
  partial: 'spree/shared/rejoiner_cart.js'
)
