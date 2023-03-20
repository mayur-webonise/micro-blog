class RemoveDefaultEmail < ActiveRecord::Migration[7.0]
  def change
    change_column_default :authers, :email, nil
  end
end
