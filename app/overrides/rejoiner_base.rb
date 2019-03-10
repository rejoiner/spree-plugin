Deface::Override.new(
  virtual_path: 'spree/layouts/spree_application',
  name: 'rejoiner_base',
  insert_top: "[data-hook='body']",
  partial: 'spree/shared/rejoiner_base.js'
)
