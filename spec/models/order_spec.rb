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
require 'rails_helper'

RSpec.describe Order, type: :model do
  pending "add some examples to (or delete) #{__FILE__}"
end
