Deface::Override.new(
  virtual_path: 'spree/orders/show',
  name: 'rejoiner_conversion',
  insert_before: "#order_summary",
  partial: 'spree/shared/rejoiner_conversion.js'
)
