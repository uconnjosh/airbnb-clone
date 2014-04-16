require 'spec_helper'

describe User do
  it ' lets the visitor visit the homepage' do
    visit root_path
    page.should have_content "Welcome JanBNB"
  end

  it 'lets a visitor sign up' do
    visit root_path
    click_link "Sign up"
    fill_in "Name", :with => "Joe"
    fill_in "Email", :with => "joe@email.com"
    fill_in "Bio", :with => "I'm trustworthy."
    choose "YES"
    fill_in "Password", :with => "password"
    fill_in "Password confirmation", :with => "password"
    click_button "Sign up"
    page.should have_content "You have signed up successfully"
    save_and_open_page
  end

end
