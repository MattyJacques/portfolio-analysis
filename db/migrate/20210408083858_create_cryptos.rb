class CreateCryptos < ActiveRecord::Migration[6.1]
  def change
    create_table :cryptos do |t|
      t.string :name, null: false
      t.integer :amount_held, limit: 8, default: 0
      t.integer :amount_deposited, limit: 8, default: 0
      t.integer :amount_withdrawn, limit: 8, default: 0

      t.timestamps
    end
  end
end
