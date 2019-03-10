if defined?(Spree::CheckoutController)
  Spree::CheckoutController.class_eval do
    helper Spree::RejoinerHelper
  end
end
