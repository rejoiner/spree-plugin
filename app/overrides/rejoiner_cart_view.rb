Deface::Override.new(
  virtual_path: 'spree/orders/edit',
  name: 'rejoiner_cart_view',
  insert_top: "[data-hook='cart_container']",
  partial: 'spree/shared/rejoiner_cart.js'
)
