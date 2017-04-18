feature 'bank accounts' do
  context 'no bank accounts have been added' do
    scenario 'should display a prompt to add a bank account' do
      visit '/bank_accounts'
      expect(page).to have_content 'No bank accounts yet'
      expect(page).to have_link 'Add a new bank account'
    end
  end
    context 'bank accounts have been added' do
    before do
      BankAccount.create(name: 'Eva\'s account')
    end

    scenario 'display bank account' do
      visit '/bank_accounts'
      expect(page).to have_content('Eva\'s account')
      expect(page).not_to have_content('No bank accounts yet')
    end
  end
end
