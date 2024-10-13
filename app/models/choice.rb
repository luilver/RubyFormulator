# frozen_string_literal: true

#  Choice class
class Choice < ActiveRecord::Base
  belongs_to :poll_option
end
