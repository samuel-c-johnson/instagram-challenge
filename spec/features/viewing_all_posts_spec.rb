require 'rails_helper'

RSpec.feature "Making a new post", type: :feature do
  scenario "Index page displays all posts" do
    add_post("Caught a sweet barrel")
    add_another_post("Shredding the pow")
    visit '/'
    expect(page).to have_content "Caught a sweet barrel"
    expect(page).to have_content "Shredding the pow"
  end
end
