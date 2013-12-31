require 'spec_helper'

feature 'User creates a receipt' do
# As a food service employee
# I want to receive inventory
# So that it can be recorded that we have food items

  context "with valid attributes" do
    it "creates a receipt" do
      food1 = FactoryGirl.create(:food)
      visit '/receipts/new'

      fill_in "Description", with: "xxx"
      fill_in "Quantity", with: 1
      select('meatloaf sandwich', :from => 'Food')
      click_on "Create Receipt"

      expect(page).to have_content "Receipt was successfully created"
    end
  end

  context "with invalid attributes" do
    it "throws errors" do
      visit 'receipts/new'

      click_on "Create Receipt"
      expect(page).to have_content "errors"
    end
  end

end
