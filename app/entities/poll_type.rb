# frozen_string_literal: true

module RubyForms
  module Entities
    # PollType Entity
    class PollType < Grape::Entity
      expose :id
      expose :text
    end
  end
end
