class WithdrawalsController < ApplicationController
  def new
    @bank_account = BankAccount.find(params[:bank_account_id])
    @withdrawal = Withdrawal.new
  end

  def create
    @bank_account = BankAccount.find(params[:bank_account_id])
    @bank_account.withdrawals.create(withdrawal_params)
    @bank_account.update(balance: @bank_account.balance - withdrawal_params[:amount].to_i)
    redirect_to '/bank_accounts'
  end

  private

  def withdrawal_params
    params.require(:withdrawal).permit(:amount)
  end
end
