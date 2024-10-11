# frozen_string_literal: true

# Poll class
class CreatePolls < ActiveRecord::Migration[7.1]
  def change
    create_table :polls do |t|
      t.string :question
    end
  end
end
