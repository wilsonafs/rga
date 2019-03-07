Given("that the user access the RGA website") do
    @home.load
    expect(@home).to have_header
end

When("he requests the page translation") do
    @home.language.click
    expect(@home).to have_language_menu
    click_on "Deutsch"
end

Then("the page content will be displayed translated") do
    expect(@home.has_current_path?(/de/)).to eq true
end