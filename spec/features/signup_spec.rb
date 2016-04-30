require 'rails_helper'
RSpec.describe User, type: :feature do
  feature "invalid signup information" do
    scenario "can visit the signup page" do
      visit signup_path
      expect(page).to have_content "Sign up"
    end
    scenario "user is invalid with bad credentials" do
      a = User.count
      visit signup_path
      fill_in "Name", with: ""
      fill_in "Email", with: "user@invalid"
      fill_in "Password", with: "foo"
      fill_in "Confirmation", with: "bar"
      click_button "Create my account"
      expect(current_path).to eql users_path
      sleep 5
      b = User.count
      expect(a).to eql b
    end
  end
end