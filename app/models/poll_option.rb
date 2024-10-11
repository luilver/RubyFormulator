# frozen_string_literal: true

# Class PollOption
class PollOption < ActiveRecord::Base
  belongs_to :poll

  delegate :poll_type, to: :poll, prefix: false

  validates_uniqueness_of :text
end
