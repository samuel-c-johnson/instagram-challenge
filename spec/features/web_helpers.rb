module Helpers

  def add_post(title)
    visit '/'
    click_on 'new post'
    attach_file("post[image]", "app/assets/images/surfing.jpg")
    fill_in "post[title]", with: title
    click_on "Create Post"
  end

  def add_another_post(title)
    visit '/'
    click_on 'new post'
    attach_file("post[image]", "app/assets/images/skiing.jpg")
    fill_in "post[title]", with: title
    click_on "Create Post"
  end
end
