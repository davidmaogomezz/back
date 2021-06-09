class HeadersShopify

  def self.call
    {
      'Content-Type': 'application/json',
      'Accept': 'application/json',
      'X-Shopify-Access-Token': ENV['X_SHOPIFY_ACCESS_TOKEN']
    }
  end

end