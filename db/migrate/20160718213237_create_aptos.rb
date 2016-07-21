class CreateAptos < ActiveRecord::Migration
  def change
    create_table :aptos do |t|
      t.string :nombre
      t.string :piso
      t.string :id_torre

      t.timestamps null: false
    end
  end
end
