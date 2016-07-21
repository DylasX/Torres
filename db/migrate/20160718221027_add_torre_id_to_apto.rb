class AddTorreIdToApto < ActiveRecord::Migration
  def change
    add_column :aptos, :torre_id, :integer
  end
end
