# frozen_string_literal: true

FactoryBot.define do
  factory :poll do
    question { Faker::Lorem.question }
    poll_type_id { 1 }

    trait :with_options do
      after(:create) do |poll|
        create(:poll_option, poll:)
      end
    end
  end
end
