# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'fullcalendar/wrapper/rails/version'

Gem::Specification.new do |spec|
  spec.name          = "fullcalendar-wrapper-rails"
  spec.version       = Fullcalendar::Wrapper::Rails::VERSION
  spec.authors       = ["Christian Dobert"]
  spec.email         = ["chr.dobert@gmail.com"]
  spec.summary       = %q{A simple wrapper for the fullcalendar jQuery Plugin"}
  spec.description   = %q{A wrapper around the great fullcalendar jQuery Plugin (see: http://arshaw.com/fullcalendar)"}
  spec.homepage      = "https://github.com/dondope/fullcalendar-wrapper-rails"
  spec.license       = "MIT"

  spec.files         = Dir["{lib,vendor}/**/*"]
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.6"
  spec.add_development_dependency "rake"
  spec.add_development_dependency "momentjs-rails", '~> 2.6.0'
end
