class RenameAutherNameToName < ActiveRecord::Migration[7.0]
  def change
    rename_column :authers, :auther_name, :name
  end
end
