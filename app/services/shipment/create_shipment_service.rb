class Shipment::ShipementsController
  attr_reader :resource

  def self.call(_params)
    puts _params
  end

  class << self

  end
end
  