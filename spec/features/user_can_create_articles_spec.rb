require "rails_helper"

feature 'User can create articles' do
    before do
      visit root_path
      click_on "New Article"
    end
  
  describe "user can successfully create an article" do
    before do
      fill_in "Content", with: "Buy your gifts now!"
      fill_in "Title", with: "Happy holidays"
      click_on "Create Article"
    end

    it 'User should see a success message' do
        expect(page).to have_content 'Article was created'
      end     

end  
end   