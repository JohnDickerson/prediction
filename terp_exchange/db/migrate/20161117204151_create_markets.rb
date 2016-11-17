class CreateMarkets < ActiveRecord::Migration[5.0]
  def change
    create_table :markets do |t|
      t.string :title
      t.string :description
      t.integer :num_shares
      t.integer :volume
      t.float :last_price
      t.date :open
      t.date :close

      t.timestamps
    end
  end
end
