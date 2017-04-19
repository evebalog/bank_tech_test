class BankAccount < ActiveRecord::Base
  has_many :deposits, dependent: :destroy
end
