class CreateBankAccounts < ActiveRecord::Migration
  def change
    create_table :bank_accounts do |t|
      t.string :name
      t.integer :balance

      t.timestamps null: false
    end
  end
end
