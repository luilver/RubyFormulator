# frozen_string_literal: true

module RubyForms
  module Entities
    # Poll Entity
    class Poll < Grape::Entity
      expose :id
      expose :title

      with_options if: :with_options do
        expose :poll_options, with: Entities::PollOption
      end
    end
  end
end
