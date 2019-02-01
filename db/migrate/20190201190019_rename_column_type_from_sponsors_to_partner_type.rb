class RenameColumnTypeFromSponsorsToPartnerType < ActiveRecord::Migration[5.2]
  def change
  	rename_column :sponsors, :type, :partner_type
  end
end
