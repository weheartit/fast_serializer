require 'rspec'
require 'active_support/cache'
require 'active_support/cache/memory_store'
require_relative "../lib/fast_serializer"
require_relative "support/test_models"

RSpec.configure do |config|
  config.run_all_when_everything_filtered = true
  config.filter_run :focus

  # Run specs in random order to surface order dependencies. If you find an
  # order dependency and want to debug it, you can fix the order by providing
  # the seed, which is printed after each run.
  #     --seed 1234
  config.order = 'random'

  config.expect_with(:rspec) { |c| c.syntax = [:should, :expect] }
end
