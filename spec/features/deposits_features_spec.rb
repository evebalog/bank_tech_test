feature 'deposits' do
  before { BankAccount.create(name: 'Current account')}

  scenario 'allows user to deposit an amount using a form' do
    visit '/bank_accounts'
    click_link 'Make a deposit to Current account'
    fill_in 'Deposit', with: '500'
    click_button 'Confirm deposit'
    expect(current_path).to eq '/bank_accounts'
    expect(page).to have_content('500')
  end
end
