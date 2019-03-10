Deface::Override.new(
  virtual_path: 'spree/products/show',
  name: 'rejoiner_product_view',
  insert_before: "[data-hook='product_show']",
  partial: 'spree/shared/rejoiner_product.js'
)
