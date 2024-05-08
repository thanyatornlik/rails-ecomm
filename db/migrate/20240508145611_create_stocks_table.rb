class CreateStocksTable < ActiveRecord::Migration[7.1]
  def change
    drop_table :admin_stocks if ActiveRecord::Base.connection.table_exists? 'admin_stocks'
  
    create_table :stocks do |t|
      t.string :size
      t.integer :amount
      t.references :product, null: false, foreign_key: true
      t.timestamps
    end
  end
end
