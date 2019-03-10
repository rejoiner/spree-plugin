require 'public_suffix'

module Spree
  class Rejoiner < Spree::Base
    def self.active?
      Spree::Config.rejoiner_site_id.present?
    end

    def self.site_id
      Spree::Config.rejoiner_site_id
    end

    def self.domain
      PublicSuffix.domain(Spree::Config.rejoiner_domain)
    end
  end
end
