class CreateItemStocks < ActiveRecord::Migration[7.2]
  def change
    create_table :item_stocks do |t|
      t.string :name
      t.integer :quantity

      t.timestamps
    end
  end
end
