# frozen_string_literal: true

FactoryBot.define do
  # Название фабрики (user)
  factory :user do
    sequence(:code) { |n| "#{n}-code" }

    # email должен быть уникален — при каждом вызове фабрики n будет увеличен
    # поэтому все будут иметь разные адреса
    sequence(:email) { |n| "#{n}@example.com" }

    entity { 'reservation' }
    report_type { 'Confirmed' }
  end
end
