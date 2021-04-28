class CreateTransactions < ActiveRecord::Migration[6.1]
  def change
    create_table :transactions do |t|
      t.belongs_to :crypto
      t.datetime :timestamp
      t.integer :type
      t.integer :quantity
      t.integer :price
      t.integer :subtotal
      t.integer :fees
      t.integer :total
      t.text :notes

      t.timestamps
    end
  end
end
