# frozen_string_literal: true

# CreatePollTypes class
class CreatePollTypes < ActiveRecord::Migration[7.1]
  def change
    create_table :poll_types do |t|
      t.string :text
    end
  end
end
