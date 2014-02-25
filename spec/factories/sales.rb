FactoryGirl.define do
  factory :sale do
    purchase_count 12
    item
    merchant
    purchaser
  end
end