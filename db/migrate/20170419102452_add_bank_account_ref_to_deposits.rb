class AddBankAccountRefToDeposits < ActiveRecord::Migration
  def change
    add_reference :deposits, :bank_account, index: true, foreign_key: true
  end
end
