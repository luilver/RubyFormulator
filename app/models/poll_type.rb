# frozen_string_literal: true

# Class PollType
class PollType < ActiveRecord::Base
  validates :text, presence: true
end
