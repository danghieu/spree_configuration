module Spree
  module Admin
    class CurrenciesController < ResourceController
      before_action :load_data, except: :index

      def model_class
        Dish::Currency
      end

      def show
        redirect_to action: :edit
      end

      def load_data
      end

      def location_after_save
        admin_currencies_url
      end
    end
  end
end