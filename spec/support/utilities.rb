def create_owner_and_log_in
  owner = FactoryGirl.create :user
  visit root_path
  click_link "Log in"
  fill_in 'Email', :with => owner.email
  fill_in 'Password', :with => owner.password
  click_button 'Log in'
  page.should have_content "#{owner.name}"
end
