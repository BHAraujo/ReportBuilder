require 'report_builder'

here = File.dirname(__FILE__)
TEST_FIXTURES_DIRECTORY = "#{here}/../../fixtures"
BIN_DIRECTORY = "#{here}/../../../bin"

require_relative "#{here}/../../file_helper"

RSpec.configure do |config|

  # Ensure that we read in our test files the same on all platforms
  Encoding.default_external = 'UTF-8'

  config.after(:all) do
    ReportBuilder::FileHelper.clear_created_directories
  end

end
