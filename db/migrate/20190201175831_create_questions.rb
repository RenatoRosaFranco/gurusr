# frozen_string_literal: true
class CreateQuestions < ActiveRecord::Migration[5.2]
  def change
    create_table :questions do |t|
      t.string   :title
      t.text     :answer

      t.timestamps
    end
  end
end
