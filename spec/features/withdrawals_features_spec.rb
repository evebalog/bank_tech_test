feature 'withdrawals' do
  before { BankAccount.create(name: 'Current account')}

  scenario 'allows user to withdraw an amount using a form' do
    visit '/bank_accounts'
    click_link 'Make a deposit to Current account'
    fill_in 'amount', with: '500'
    click_button 'Confirm deposit'
    click_link 'Withdraw from Current account'
    fill_in 'Withdraw', with: '100'
    click_button 'Confirm withdrawal'
    expect(current_path).to eq '/bank_accounts'
    expect(page).to have_content('400')
  end
end
