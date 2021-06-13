module Api
  module V1
    class ShipementsController < Api::V1::ApiController
      def index
        request = CreateShipmentService.call(params)
        render json: orders
      end
    end
  end
end
