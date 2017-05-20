class CreateProducts < ActiveRecord::Migration[5.1]
  def change
    create_table :products do |t|
      t.string :name
      t.float :quantity
      t.string :unit
      t.integer :sale_price 
      t.timestamps
    end
  end
end
