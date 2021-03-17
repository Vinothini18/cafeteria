class Orders < ActiveRecord::Migration[6.1]
  def change
    create_table :orders do |t|
      t.string :item_name
      t.string :item_quantity
      t.string :item_price
      t.timestamps
    end
  end
end
