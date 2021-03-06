require 'spec_helper'
require 'coveralls'
Coveralls.wear_merged!('rails')

ENV['RAILS_ENV'] ||= 'test'
require File.expand_path('../config/environment', __dir__)
# Prevent database truncation if the environment is production
abort("The Rails environment is running in production mode!") if Rails.env.production?
require 'rspec/rails'

RSpec.configure do |config|
  config.include FactoryBot::Syntax::Methods
end

begin
  ActiveRecord::Migration.maintain_test_schema!
rescue ActiveRecord::PendingMigrationError => e
  puts e.to_s.strip
  exit 1
end
RSpec.configure do |config|
  
  config.fixture_path = "#{::Rails.root}/spec/fixtures"

  
  config.use_transactional_fixtures = true


  config.infer_spec_type_from_file_location!


  config.filter_rails_from_backtrace!
  
end
