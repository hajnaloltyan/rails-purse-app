class CreatePurchases < ActiveRecord::Migration[7.1]
  def change
    create_table :purchases do |t|
      t.integer :author_id
      t.string :name
      t.decimal :amount

      t.timestamps
    end
  end
end
