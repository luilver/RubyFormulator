# frozen_string_literal: true

# CreatePollOption class
class CreatePollOptions < ActiveRecord::Migration[7.1]
  def change
    create_table :poll_options do |t|
      t.string :text
      t.references :poll
    end
  end
end
