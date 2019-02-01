# frozen_string_literal: true
class CreatePosts < ActiveRecord::Migration[5.2]
  def change
    create_table   :posts do |t|
      t.string     :title
      t.text       :description
      t.text       :content
      t.string     :slug
      t.string     :tags
      t.boolean    :published
      t.references :category, foreign_key: true
      t.references :user, foreign_key: true

      t.timestamps
    end
  end
end
