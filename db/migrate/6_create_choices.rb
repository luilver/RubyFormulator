# frozen_string_literal: true

# CreateChoices class
class CreateChoices < ActiveRecord::Migration[7.1]
  def change
    create_table :choices do |t|
      t.string :type, null: false
      t.string :content
      t.boolean :selected, default: false
      t.references :poll_option, null: false, foreign_key: true

      t.timestamps
    end
  end
end
