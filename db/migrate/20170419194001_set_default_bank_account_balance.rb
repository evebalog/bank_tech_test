class SetDefaultBankAccountBalance < ActiveRecord::Migration
  def change
    change_column_default :bank_accounts, :balance, 0
  end
end
