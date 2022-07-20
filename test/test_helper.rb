# frozen_string_literal: true

require "simplecov"
require "simplecov-lcov"
SimpleCov::Formatter::LcovFormatter.config.report_with_single_file = true
SimpleCov.formatter = SimpleCov::Formatter::LcovFormatter
SimpleCov.start do
  add_filter(%r{^/test/}) # For MiniTest, use `spec` for RSpec
  enable_coverage(:branch)
end

$LOAD_PATH.unshift File.expand_path("../lib", __dir__)
require "undercoverci_demo_ruby"

require "minitest/autorun"
