feature 'Hit points' do
  scenario "I can see player 2's hit points" do
    visit('/')
    fill_in :player_1_name, with: "Angron"
    fill_in :player_2_name, with: "Guilleman"
    click_button 'Submit'
    expect(page).to have_content "Guilleman: 60/60hp"
  end

end
