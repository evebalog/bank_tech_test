class BankAccount < ActiveRecord::Base
  has_many :deposits, dependent: :destroy
  has_many :withdrawals, dependent: :destroy

  def deposit_total
    deposits.pluck(:amount).reduce(:+)
  end
  def withdrawal_total
    withdrawals.pluck(:amount).reduce(:+)
  end
end
