# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'heatgrid/version'

Gem::Specification.new do |spec|
  spec.name          = "heatgrid"
  spec.version       = Heatgrid::VERSION
  spec.authors       = ["Eugene Millerman"]
  spec.email         = ["e.v.millerman@gmail.com"]
  spec.summary       = %q{Generate a heatmap from a 2d array. }
  spec.description   = %q{Generate a grid based heatmap from a 2d array using rmagick. Requires ImageMagick. Work in progress.}
  spec.homepage      = "https://github.com/eugmill/heatgrid"
  spec.license       = "MIT"

  spec.files         = `git ls-files -z`.split("\x0")
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.5"
  spec.add_development_dependency "rake"
  spec.add_development_dependency "rspec", "~>2.5.0"
  spec.add_development_dependency "pry"

end
