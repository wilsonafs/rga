When("he requests a specific office") do
    @home.offices.click
    expect(@home).to have_offices_menu
    @home.new_york.click
end

Then("will be displayed the projects from the selected office") do
    expect(@home.has_current_path?(/new-york/)).to eq true
end