def sign_in_and_play
  visit('/')
  fill_in :player_1_name, with: "Angron"
  fill_in :player_2_name, with: "Guilleman"
  click_button "Submit"
end
