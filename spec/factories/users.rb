# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  sequence :email do |n|
    "test#{n}@dataengineering.com"
  end
  
  factory :user do
  	email 
  	password 'P@ssw0rd'
  end
end
