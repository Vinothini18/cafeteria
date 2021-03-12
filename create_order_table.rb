require './connect_db.rb'
connect_db!
ActiveRecord::Migration.create_table(:orders) do |t|  
    t.column :item_id, :text  
    t.column :item_name, :text
    t.column :item_quantity, :text 
     
end