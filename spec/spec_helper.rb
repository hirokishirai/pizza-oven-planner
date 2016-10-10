$LOAD_PATH.unshift File.expand_path('../../lib', __FILE__)
require 'pizza_oven_planner'

if ENV['CI']
  require 'simplecov'
  require 'coveralls'
  require "codeclimate-test-reporter"
  Coveralls.wear!

  SimpleCov.formatter = SimpleCov::Formatter::MultiFormatter.new([
    SimpleCov::Formatter::HTMLFormatter,
    Coveralls::SimpleCov::Formatter
  ])
  SimpleCov.start 'test_frameworks'
  CodeClimate::TestReporter.start
end
