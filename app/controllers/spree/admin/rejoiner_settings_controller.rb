module Spree
  module Admin
    class RejoinerSettingsController < Spree::Admin::BaseController
      def edit
        @site_settings = %w[rejoiner_site_id rejoiner_domain rejoiner_api_key]
      end

      def update
        params.each do |name, value|
          next unless Spree::Config.has_preference? name

          Spree::Config[name] = value
        end

        flash[:success] = Spree.t(:successfully_updated, resource: Spree.t(:rejoiner_settings))
        redirect_to edit_admin_rejoiner_settings_path
      end
    end
  end
end
