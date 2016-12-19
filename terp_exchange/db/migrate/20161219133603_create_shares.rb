class CreateShares < ActiveRecord::Migration[5.0]
  def change
    create_table :shares do |t|
      t.integer :market_id
      t.integer :user_id
      t.integer :longs
      t.integer :shorts

      t.timestamps
    end
  end
end
