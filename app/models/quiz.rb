# frozen_string_literal: true

# Class Quiz
class Quiz < ActiveRecord::Base
  has_many :polls
end
