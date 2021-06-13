# == Schema Information
#
# Table name: shipments
#
#  id         :bigint           not null, primary key
#  order_id   :bigint           not null
#  courier    :string
#  created_at :datetime         not null
#  updated_at :datetime         not null
#
# Indexes
#
#  index_shipments_on_order_id  (order_id)
#
FactoryBot.define do
  factory :shipment do
    order { nil }
    courier { "MyString" }
  end
end
