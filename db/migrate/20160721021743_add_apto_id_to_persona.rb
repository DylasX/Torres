class AddAptoIdToPersona < ActiveRecord::Migration
  def change
    add_column :personas, :apto_id, :string
  end
end
