class CreateSponsors < ActiveRecord::Migration[5.2]
  def change
    create_table :sponsors do |t|
      t.string :logo
      t.string :name
      t.string :description
      t.string :website
      t.string :slug
      t.string :tags
      t.string :responsible
      t.references :user, foreign_key: true

      t.timestamps
    end
  end
end
