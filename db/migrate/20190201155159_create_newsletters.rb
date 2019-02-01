# frozen_string_literal: true
class CreateNewsletters < ActiveRecord::Migration[5.2]
  def change
    create_table :newsletters do |t|
      t.string   :name
      t.string   :email
      t.boolean  :active
      t.string   :token
      t.date     :signup_date

      t.timestamps
    end
  end
end
