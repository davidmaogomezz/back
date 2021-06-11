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
FactoryBot.define do
  factory :order do
    confirmed { false }
    financial_status { "MyString" }
  end
end
