require 'devise'
RSpec.configure do |config|
    config.fixture_path = "#{::Rails.root}/spec/fixtures"
    config.use_transactional_fixtures = true
    config.infer_spec_type_from_file_location!
    config.filter_rails_from_backtrace!
    config.include FactoryBot::Syntax::Methods
    config.include Warden::Test::Helpers 

    config.include Devise::Test::ControllerHelpers, type: :controller
    config.include Devise::Test::ControllerHelpers, type: :view
 
end
  config.expect_with :rspec do |expectations|
    
    expectations.include_chain_clauses_in_custom_matcher_descriptions = true
  end

  
  config.mock_with :rspec do |mocks|
    mocks.verify_partial_doubles = true
  end

  config.shared_context_metadata_behavior = :apply_to_host_groups
end

