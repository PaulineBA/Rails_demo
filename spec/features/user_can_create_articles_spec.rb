require "rails_helper"
require "spec_helper"

feature 'User can create articles' do
  let(:model) { FactoryBot.create(:model, email: "pauline@test.com", password: "test")}
  before do
    login_as(model, scope: :model)
    visit root_path
    click_on "New article"
    end
  end
  
  describe "user can successfully create an article" do
    before do
      fill_in "Title", with: "Happy holidays"
      fill_in "Content", with: "Buy your gifts now!"
      click_on "Create Article"
    end

    it 'User should see a success message' do
        expect(page).to have_content 'Article was created'
      end     

end  
