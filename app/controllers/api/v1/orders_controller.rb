module Api
  module V1
    class OrdersController < Api::V1::ApiController

      def index
        render json: { response: 'ok'}
      end

    end
  end
end
