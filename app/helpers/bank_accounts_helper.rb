module BankAccountsHelper
  def show_balance(bank_account)
    @deposits = Deposit.where("bank_account_id = ?", bank_account.id)
    @balance = []
    @deposits.each do |deposit|
      @balance << deposit.amount
    end
    @balance
  end
end
