require "bundler/setup"
require "tic_tac_toe"
require "rspec/collection_matchers"
require "rspec/mocks"

RSpec.configure do |config|
  # Enable flags like --only-failures and --next-failure
  config.example_status_persistence_file_path = ".rspec_status"
  config.raise_errors_for_deprecations!
  config.expect_with :rspec do |c|
    c.syntax = :expect
  end
end
