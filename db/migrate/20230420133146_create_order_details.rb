class CreateOrderDetails < ActiveRecord::Migration[6.1]
  def change
    create_table :order_details do |t|
      
      t.integer :order_id,           null: false, default: ""
      t.integer :item_id,            null: false, default: ""
      t.integer :price,              null: false, default: ""
      t.integer :quantity,           null: false, default: ""
      t.integer :production_status,  null: false, default: "0"

      t.timestamps
    end
  end
end
