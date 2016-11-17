class CreateTransactions < ActiveRecord::Migration[5.0]
  def change
    create_table :transactions do |t|
      t.integer :user_id
      t.integer :market_id
      t.date :timestamp
      t.integer :num_shares
      t.float :price

      t.timestamps
    end
  end
end
