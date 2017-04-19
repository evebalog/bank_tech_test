class CreateWithdrawals < ActiveRecord::Migration
  def change
    create_table :withdrawals do |t|
      t.integer :withdrawal_amount

      t.timestamps null: false
    end
  end
end
