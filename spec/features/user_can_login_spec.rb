require "spec_helper"
require "rails_helper"

feature "User can login" do
    let(:model) { FactoryBot.create(:model, email: "ghsghf@hdj.com") }
 
     describe "on the login the page" do
        before do
            visit new_model_session_path
             fill_in "Email", with: model.email
             fill_in "Password", with: model.password
             click_on "Log in"
            end
 
            it "after log in show successful message" do
                expect(page).to have_content "Signed in successfully"
            end
        end

        describe 'if requirements are not met' do
            before do
                visit new_model_session_path
            end
            it "with wrong password" do
             fill_in "Email", with: model.email
             fill_in "Password", with: "blablabla"
             click_on "Log in"
             expect(page).to have_content "Invalid Email or password"
            end
    
             it 'with unregistered user' do
                fill_in "Email", with: "ghjsh@hj"
                fill_in "Password", with: "wrongPassword"
                within '.actions' do
                    click_on "Log in"
                end
                expect(page).to have_content "Invalid Email or password"
         end
     end
 end