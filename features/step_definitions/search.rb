When("he does a search for {string}") do |example|
    @home.search.click
    expect(@home).to have_search_menu
    @home.search_input.set example
    @home.search_input.native.send_keys(:return)
end

Then("he will be redirect for the search results") do
    expect(@home.has_current_path?(/Bob%20Greenberg/)).to eq true
end