require 'rails_helper'

describe "the add a tag process" do
  it 'adds a tag' do
    user = FactoryGirl.create(:user)
    login_as(user, :scope => :user)

    puts user.email

    visit '/'

    fill_in 'tag_name', with: "Coffee"
    click_button "Add a tag"
    expect(page).to have_content "Coffee"
  end
end
