class WithdrawalsController < ApplicationController
  def new
    @bank_account = BankAccount.find(params[:bank_account_id])
    @withdrawal = Withdrawal.new
  end

  def create
    @bank_account = BankAccount.find(params[:bank_account_id])
    @bank_account.withdrawals.create(deposit_params)
    redirect_to '/bank_accounts'
  end

  private

  def deposit_params
    params.require(:withdrawal).permit(:withdrawal_amount)
  end
end
