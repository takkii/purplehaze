# frozen_string_literal: true

require 'date'

# Test, user login for devise.
FactoryBot.define do
  factory :user do
    name { "test_user" }
    sequence(:email) { |n| "test#{n}@example.com" }
    password { "password" }
    password_confirmation { "password" }
    confirmed_at { Date.today }
  end
end
