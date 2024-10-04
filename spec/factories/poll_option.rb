# frozen_string_literal: true

FactoryBot.define do
  factory :poll_option do
    poll
    text { Faker::Lorem.sentence }
  end
end
