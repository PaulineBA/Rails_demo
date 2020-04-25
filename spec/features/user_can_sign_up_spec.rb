require "spec_helper"
require "rails_helper"

feature "user can Sign up" do
    describe "user can Sign up" do
        before do 
            visit root_path
            click_on "Sign_up"
        end
        it "should have a sign up form" do 
            expect(page).to have_content "Welcome!"
        end

        it 'should be able to be filled in' do
            fill_in "Email", with: "pauline@test.com"
            fill_in "Password", with: "password"
            fill_in "Password confirmation", with: "password"
            within ".actions" do
                click_on "Sign_up"
            end
                expect(page).to have_content "Signed up successfully"
    end
end

    describe 'user cannot sign up' do
        before do
            visit new_model_registration_path
    end

    it 'if password doesnt match' do
        fill_in "Password", with: "password"
        fill_in "Password confirmation", with: "1456487wer"
        within ".actions" do 
            click_on "Sign_up"
    end
        
        expect(page).to have_content "Password confirmation doesn't match"
    end

    let(:model) { FactoryBot.create(:model) }

    it 'if email is taken' do
        fill_in "Email", with: model.email
        fill_in "Password", with: model.password
        fill_in "Password confirmation", with: model.password
        within ".actions" do
            click_on "Sign_up"
        end
        expect(page).to have_content "Email is already been taken"
    

end
end
end  
