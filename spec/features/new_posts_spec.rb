require 'rails_helper'

RSpec.feature "Making a new post", type: :feature do
  scenario "Posting a new picture to instagram" do
    visit '/'
    click_on 'new post'
    attach_file("post[image]", "app/assets/images/surfing.jpg")
    fill_in "post[title]", with: "Caught a sweet barrel"
    click_on "Create Post"
    expect(page).to have_content "Caught a sweet barrel"
  end

end
