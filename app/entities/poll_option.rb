# frozen_string_literal: true

module RubyForms
  module Entities
    # PollOption Entity
    class PollOption < Grape::Entity
      expose :id
      expose :text
      expose :poll_type
    end
  end
end
