require 'spec_helper'

feature 'User creates a food type' do
# As a food service employee
# I want to receive inventory
# So that it can be recorded that we have food items

  context "with valid attributes" do
    it "creates a food" do
      visit '/foods/new'

      fill_in "Name", with: "sloppy joes"
      click_on "Create Food"

      expect(page).to have_content "Food was successfully created"
    end
  end

  context "with invalid attributes" do
    it "throws errors" do
      visit '/foods/new'

      click_on "Create Food"
      expect(page).to have_content "error"
    end
  end

end
