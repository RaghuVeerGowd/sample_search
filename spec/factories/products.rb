require "rails_helper"
require "spec_helper"
require "factory_girl_rails"
require 'faker'

FactoryGirl.define do
 factory :product do |f| 
   f.name {Faker::Name.name} 	
   f.age {Faker::Number.number(2)}
   f.country {Faker::Address.country}
 end 

 factory :invalid_product, parent: :product do |f| 
	f.name nil
	f.age nil
	f.country nil 
 end
end