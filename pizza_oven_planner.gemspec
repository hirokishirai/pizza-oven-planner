# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'pizza_oven_planner/version'

Gem::Specification.new do |spec|
  spec.name          = "pizza_oven_planner"
  spec.version       = PizzaOvenPlanner::VERSION
  spec.authors       = ["Hiroki Shirai"]
  spec.email         = ["shiraihiroki.jp@gmail.com"]

  spec.summary       = %q{PozzaOvenPlanner provides features that are the easiest to plan pizza oven.}
  spec.description   = %q{PozzaOvenPlanner provides features that are the easiest to plan pizza oven.}
  spec.homepage      = "https://github.com/hirokishirai/pizza-oven-planner"
  spec.license       = "MIT"

  spec.files         = `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.add_dependency 'thor'

  spec.add_development_dependency "bundler", "~> 1.12"
  spec.add_development_dependency "rake", "~> 10.0"
  spec.add_development_dependency "rspec", "~> 3.0"
end
