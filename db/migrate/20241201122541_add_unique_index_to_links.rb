class AddUniqueIndexToLinks < ActiveRecord::Migration[7.0]
  def change
    add_index :links, [:user_id, :index], unique: true
  end
end
