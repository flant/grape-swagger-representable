# frozen_string_literal: true

require_relative '../lib/grape-swagger/representable'
require 'grape'
require 'representable/json'

Bundler.setup :default, :test

require 'rack'
require 'rack/test'

RSpec.configure do |config|
  require 'rspec/expectations'
  config.include RSpec::Matchers
  config.mock_with :rspec
  config.include Rack::Test::Methods
  config.raise_errors_for_deprecations!

  config.order = 'random'
  config.seed = 40_834
end
