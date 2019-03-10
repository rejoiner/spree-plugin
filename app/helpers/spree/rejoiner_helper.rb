module Spree
  module RejoinerHelper
    def convert_price_to_cents(price)
      (price * 100).round
    end

    def get_image_path(image)
      if defined?(ActiveStorage) && !Rails.application.config.use_paperclip
        Rails.application.routes.url_helpers.rails_blob_path(image.attachment, only_path: true)
      else
        asset_url(image.attachment)
      end
    end

    def get_image_url(image)
      request.base_url + get_image_path(image)
    end

    def get_base_product(product)
      {
        product_id: product.id,
        name: product.name,
        category: product.try(:category).try(:name),
        price: convert_price_to_cents(product.price),
        product_url: product_url(product)
      }
    end

    def get_rejoiner_product(product, opts = {})
      base_product = get_base_product product
      base_product[:sku] = product.sku if product.sku
      base_product[:image_url] = get_image_url(opts.delete(:image)) if opts[:image]
      base_product[:qty_price] = base_product[:price] * opts[:item_qty] if opts[:item_qty]
      base_product.merge(opts).to_json.html_safe
    end

    def get_rejoiner_cart_data(order)
      {
        cart_value: convert_price_to_cents(order.item_total),
        cart_item_count: order.item_count,
        order_number: order.number
      }.to_json.html_safe
    end
  end
end
