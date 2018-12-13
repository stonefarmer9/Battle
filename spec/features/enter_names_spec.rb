
feature 'Enter names' do
  scenario 'submitting names' do
    visit('/')
    fill_in :player_1_name, with: "Angron"
    fill_in :player_2_name, with: "Guilleman"
    click_button "Submit"
    expect(page).to have_content 'Angron vs. Guilleman'
  end
end
