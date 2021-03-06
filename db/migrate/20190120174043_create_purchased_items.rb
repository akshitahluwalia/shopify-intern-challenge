class CreatePurchasedItems < ActiveRecord::Migration[5.2]
  def change
    create_table :purchased_items do |t|
      t.string :name
      t.float :price
      t.integer :quantity
      t.references :user, foreign_key: true

      t.timestamps
    end
  end
end
