# frozen_string_literal: true

# Class PollOption
class PollOption < ActiveRecord::Base
  belongs_to :poll
  has_one :choice

  delegate :poll_type, to: :poll, prefix: false
  delegate :selected, to: :choice, prefix: false, allow_nil: true

  validates_uniqueness_of :text
end
