# frozen_string_literal: true
class CreateMembers < ActiveRecord::Migration[5.2]
  def change
    create_table :members do |t|
      t.string   :name
      t.string   :phone
      t.string   :gender
      t.string   :email
      t.date     :birthdate

      t.timestamps
    end
  end
end
