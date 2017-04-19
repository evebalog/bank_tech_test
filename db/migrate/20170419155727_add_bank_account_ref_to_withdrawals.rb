class AddBankAccountRefToWithdrawals < ActiveRecord::Migration
  def change
    add_reference :withdrawals, :bank_account, index: true, foreign_key: true
  end
end
