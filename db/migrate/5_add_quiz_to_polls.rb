# frozen_string_literal: true

# AddQuizToPolls class
class AddQuizToPolls < ActiveRecord::Migration[7.1]
  def change
    add_reference :polls, :quiz, null: true, foreign_key: true
  end
end
