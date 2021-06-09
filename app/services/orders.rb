class Orders
  attr_reader :resource

  def self.call(_params)
    path = '2021-01/orders.json?status=any'
    @resource = "#{UrlShopify.call}#{path}"
    make_request
  end

  class << self
    def make_request
      request = HTTParty.get(@resource, { headers: HeadersShopify.call })
      request.body
    end
  end
end
