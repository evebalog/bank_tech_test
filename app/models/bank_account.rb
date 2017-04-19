class BankAccount < ActiveRecord::Base
  has_many :deposits, dependent: :destroy
  has_many :withdrawals, dependent: :destroy
end
