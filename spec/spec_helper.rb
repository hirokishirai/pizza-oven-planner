$LOAD_PATH.unshift File.expand_path('../../lib', __FILE__)
require 'pizza_oven_planner'

if ENV['CI']
  require 'simplecov'
  require 'coveralls'
  Coveralls.wear!

  SimpleCov.formatter = SimpleCov::Formatter::MultiFormatter[
    SimpleCov::Formatter::HTMLFormatter,
    Coveralls::SimpleCov::Formatter
  ]
  SimpleCov.start 'test_frameworks'
end
