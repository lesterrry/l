class AddRequiredToLinks < ActiveRecord::Migration[7.0]
  def change
    change_column_null :links, :index, false
    change_column_null :links, :link, false
  end
end
