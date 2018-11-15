# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'cocoapods-show-podpsecs-in-project/gem_version.rb'

Gem::Specification.new do |spec|
  spec.name          = 'cocoapods-show-podpsecs-in-project'
  spec.version       = CocoapodsShowPodpsecsInProject::VERSION
  spec.authors       = ['X140Yu']
  spec.email         = ['zhaoxinyu1994@gmail.com']
  spec.description   = %q{A short description of cocoapods-show-podpsecs-in-project.}
  spec.summary       = %q{A longer description of cocoapods-show-podpsecs-in-project.}
  spec.homepage      = 'https://github.com/EXAMPLE/cocoapods-show-podpsecs-in-project'
  spec.license       = 'MIT'

  spec.files         = `git ls-files`.split($/)
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ['lib']

  spec.add_development_dependency 'bundler', '~> 1.3'
  spec.add_development_dependency 'rake'
end