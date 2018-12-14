feature 'Hit points' do
  scenario "I can see player 2's hit points" do
    sign_in_and_play
    expect(page).to have_content "Guilleman: 60/60hp"
  end

end
