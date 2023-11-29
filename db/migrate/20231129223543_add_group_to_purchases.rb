class AddGroupToPurchases < ActiveRecord::Migration[7.1]
  def change
    add_reference :purchases, :group, null: false, foreign_key: true
  end
end
