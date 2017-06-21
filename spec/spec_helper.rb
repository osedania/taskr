require 'coveralls'
require File.expand_path("../../config/environment", __FILE__)

Coveralls.wear_merged!('rails')

RSpec.configure do |config|

  config.expect_with :rspec do |expectations|

    expectations.include_chain_clauses_in_custom_matcher_descriptions = true
  end

  config.mock_with :rspec do |mocks|
    mocks.verify_partial_doubles = true
  end

  config.before(:each) do
    Aws.config[:s3] = {stub_responses: true}
  end

  config.shared_context_metadata_behavior = :apply_to_host_groups
end
