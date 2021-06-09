module Api
  module V1
    class OrdersController < Api::V1::ApiController

      def index
        render json: Orders.call(params)
      end

    end
  end
end
