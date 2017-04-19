class DepositsController < ApplicationController

  def new
    @bank_account = BankAccount.find(params[:bank_account_id])
    @deposit = Deposit.new
  end

  def create
    @bank_account = BankAccount.find(params[:bank_account_id])
    @bank_account.deposits.create(deposit_params)
    redirect_to '/bank_accounts'
  end

  private

  def deposit_params
    params.require(:deposit).permit(:amount)
  end
end
