class UrlShopify
  def self.call
    "https://#{ENV['STORE_NAME']}.myshopify.com/admin/api/"
  end
end
