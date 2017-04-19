class RenameDepositAmountToAmount < ActiveRecord::Migration
  def change
    rename_column :deposits, :deposit_amount, :amount
  end
end
