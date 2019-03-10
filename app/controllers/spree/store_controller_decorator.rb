if defined?(Spree::StoreController)
  Spree::StoreController.class_eval do
    helper Spree::RejoinerHelper
  end
end
