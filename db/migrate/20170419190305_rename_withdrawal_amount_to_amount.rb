class RenameWithdrawalAmountToAmount < ActiveRecord::Migration
  def change
    rename_column :withdrawals, :withdrawal_amount, :amount
  end
end
