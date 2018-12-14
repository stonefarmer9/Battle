feature 'attack' do
  scenario "attack player 2" do
    sign_in_and_play
    click_link "Attack"
    expect(page).to have_content "Angron attacked Guilliman"
  end

  scenario 'Attack reduces player 2s hit points by 10' do
    sign_in_and_play
    click_link "Attack"
    click_link "Ok"
    expect(page).not_to have_content "Guilliman: 60/60hp"
    expect(page).to have_content "Guilliman: 50/60hp"
  end
end
