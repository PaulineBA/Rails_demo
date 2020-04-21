require "rails_helper"

feature 'User can create articles' do
    before do
      visit root_path
      click_on "New Article"
    end
end
  
  context "Successfully create an article [Happy Path]" do
    before do
      fill_in "Title", with: "Happy holidays"
      fill_in "Content", with: "Buy your gifts now!"
      click_on "Create Article"
    end
end  
      