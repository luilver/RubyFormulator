# frozen_string_literal: true

# CreateQuizzes class
class CreateQuizzes < ActiveRecord::Migration[7.1]
  def change
    create_table :quizzes do |t|
      t.string :title
      t.text :description
    end
  end
end
