class CreateMarkets < ActiveRecord::Migration[5.0]
  def change
    create_table :markets do |t|
      t.string :title
      t.string :description
      t.float :b_val
      t.integer :num_shares
      t.integer :volume
      t.integer :longs
      t.integer :shorts
      t.float :last_price
      t.date :open
      t.date :close

      t.timestamps
    end
  end
end
