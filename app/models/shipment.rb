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
class Shipment < ApplicationRecord
  belongs_to :order
end
