require 'rails_helper'

describe "the add a post process" do
  it 'adds a post' do
    user = FactoryGirl.create(:user)
    login_as(user, :scope => :user)
    visit '/posts/new'
    fill_in 'post_author', with: "Me"
    fill_in 'post_title', with: "This is a test"
    fill_in 'post_body', with: "Random words"

    click_button "Add post"
    expect(page).to have_content "This is a test"
  end
end
