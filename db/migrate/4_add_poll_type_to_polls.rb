# frozen_string_literal: true

# AddPollTypeToPolls class
class AddPollTypeToPolls < ActiveRecord::Migration[7.1]
  def change
    add_reference :polls, :poll_type, null: false, foreign_key: true
  end
end
