# frozen_string_literal: true

# Class Poll
class Poll < ActiveRecord::Base
  belongs_to :quiz
  belongs_to :poll_type

  has_many :poll_options

  accepts_nested_attributes_for :poll_options, allow_destroy: true, reject_if: :option_blank

  alias options poll_options

  validates :question, presence: true

  def option_blank(attributes)
    attributes['text'].blank?
  end
end
