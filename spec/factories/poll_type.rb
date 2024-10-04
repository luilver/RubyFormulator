# frozen_string_literal: true

FactoryBot.define do
  factory :poll_type do
    text { Faker::Lorem.word }
  end
end
