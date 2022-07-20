# frozen_string_literal: true

require "bundler/gem_tasks"
require "rake/testtask"

# Multiple tests:
#   rake test TEST_FILES=test/first_test.rb,test/second_test.rb
# One test:
#   rake test TEST=test/first_test.rb
Rake::TestTask.new(:test) do |t|
  files = if ENV["TEST_FILES"]
            ENV["TEST_FILES"].split(",")
          else
            FileList["test/**/test_*.rb"]
          end

  t.libs << "test"
  t.libs << "lib"
  t.test_files = files
end

require "rubocop/rake_task"

RuboCop::RakeTask.new

task default: %i[test rubocop]
