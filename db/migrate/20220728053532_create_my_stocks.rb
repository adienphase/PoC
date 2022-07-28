class CreateMyStocks < ActiveRecord::Migration[7.0]
  def change
    create_table :my_stocks do |t|
      t.string :ticker
      t.string :name
      t.integer :quantity
      t.decimal :buy_price
      t.decimal :current_price

      t.timestamps
    end
  end
end
