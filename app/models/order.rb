# == Schema Information
#
# Table name: orders
#
#  id               :bigint           not null, primary key
#  confirmed        :boolean
#  financial_status :string
#  created_at       :datetime         not null
#  updated_at       :datetime         not null
#  data             :jsonb
#
class Order < ApplicationRecord
end
