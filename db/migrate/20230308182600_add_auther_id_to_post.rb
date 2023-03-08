class AddAutherIdToPost < ActiveRecord::Migration[7.0]
  def change
    add_reference :posts, :auther , foreign_key: true
  end
end
