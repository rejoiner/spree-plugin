Deface::Override.new(
  virtual_path: 'spree/admin/shared/sub_menu/_configuration',
  name: 'rejoiner_admin_sidebar',
  insert_bottom: '[data-hook="admin_configurations_sidebar_menu"]',
  text: '<%= configurations_sidebar_menu_item(Spree.t(:rejoiner_settings), spree.edit_admin_rejoiner_settings_path) %>'
)
