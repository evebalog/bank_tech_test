feature 'bank accounts' do
  context 'no bank accounts have been added' do
    scenario 'should display a prompt to add a bank account' do
      visit '/bank_accounts'
      expect(page).to have_content 'No bank accounts yet'
      expect(page).to have_link 'Add a new bank account'
    end
  end
    context 'bank accounts have been added' do
    before { BankAccount.create(name: 'Current account') }

    scenario 'display bank account' do
      visit '/bank_accounts'
      expect(page).to have_content('Current account')
      expect(page).not_to have_content('No bank accounts yet')
    end
  end
  context 'creating bank accounts' do
    scenario 'prompts user to fill out a form, then displays the new bank account' do
      visit '/bank_accounts'
      click_link 'Add a new bank account'
      fill_in 'Name', with: 'Current account'
      click_button 'Create bank account'
      expect(page).to have_content 'Current account'
      expect(current_path).to eq '/bank_accounts'
    end
  end
end
