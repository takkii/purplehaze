require 'faker'

FactoryBot.define do
  factory :users do
    pass = Faker::Internet.password(min_length: 6)

    email                 { Faker::Internet.email }
    password              { pass }
    password_confirmation { pass }
  end
end
