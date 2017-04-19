class CreateDeposits < ActiveRecord::Migration
  def change
    create_table :deposits do |t|
      t.integer :deposit_amount

      t.timestamps null: false
    end
  end
end
