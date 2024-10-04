# frozen_string_literal: true

# Class Poll
class Poll < ActiveRecord::Base
  belongs_to :quiz
  belongs_to :poll_type

  has_many :poll_options

  validates :question, presence: true
end
