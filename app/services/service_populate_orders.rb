class ServicePopulateOrders
	attr_reader :month, :count_save

	def self.call
		puts "------------------------START------------------------"
		@count_save = 0
		first_month =  Time.now - 2.years
		while (first_month <= Time.now)
			@month = first_month.strftime("%Y-%m")
      count_orders = count_orders_month
			if count_orders.present?
				puts "------------------------#{@month}------------------------"
        orders = orders_shopify
				if orders.length > 0
					orders.each do |order|
            save_order(order)
          end
				end
			end		
			first_month = first_month + 1.month
		end
		puts "orders saved -> #{@count_save}"
		puts "------------------------END------------------------"
	end

	class << self
		def count_orders_month
			path_count = "#{@month}/orders/count.json"
			resource_count = "#{UrlShopify.call}#{path_count}"
			request_count = HTTParty.get(resource_count, { headers: HeadersShopify.call })
			response_count = JSON.parse(request_count.body)
			response_count["count"]
		end
		def orders_shopify
			path = "#{@month}/orders.json?status=any"
			resource = "#{UrlShopify.call}#{path}"
			request = HTTParty.get(resource, { headers: HeadersShopify.call })
			response = JSON.parse(request.body)
			response["orders"]			
		end
		def save_order(order)
			id = order['id']
			order_object = Order.find_by_id(id)
			if order_object.nil?
				order_object = Order.new
				order_object.data = order
				order_object.id = id
				order_object.confirmed = order['confirmed']
				order_object.confirmed = order['confirmed']
				order_object.financial_status = order['financial_status']				
				order_object.created_at = order['created_at']
				@count_save += 1 if order_object.save
      else
        order_object.class
			end
		end
	end
end
