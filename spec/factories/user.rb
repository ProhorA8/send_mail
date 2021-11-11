# frozen_string_literal: true

FactoryBot.define do
  factory :user do
    sequence(:code) { |i| "A-000#{i}" }
    sequence(:email) { |i| "test#{i}@gmail.com" }
    entity { 'reservation' }
    report_type { 'Confirmed' }
  end
end
