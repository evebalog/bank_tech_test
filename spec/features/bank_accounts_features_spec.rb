feature 'bank accounts' do
  context 'no bank accounts have been added' do
    scenario 'should display a prompt to add a bank account' do
      visit '/bank_accounts'
      expect(page).to have_content 'No bank accounts yet'
      expect(page).to have_link 'Add a new bank account'
    end
  end
end
