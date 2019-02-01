class AddColumnTypeToSponsors < ActiveRecord::Migration[5.2]
  def change
    add_column :sponsors, :type, :string
  end
end
