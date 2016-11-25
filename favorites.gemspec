# -*- encoding: utf-8 -*-
require File.expand_path('../lib/favorites/version', __FILE__)

Gem::Specification.new do |gem|
  gem.name                = "favorites"

  gem.authors             = ["Chris Doyle"]
  gem.email               = ["chris@arches.io"]
  gem.email               = "chris@arches.io"

  gem.description         = "Favorites lets you access specific ActiveRecord objects with a shortcut"
  gem.summary             = "Favorites lets you access specific ActiveRecord objects with a shortcut"
  gem.homepage            = "http://github.com/arches/favorites"
  gem.version             = Favorites::VERSION
  gem.license             = 'MIT'

  gem.files               = `git ls-files`.split($\)
  gem.test_files          = gem.files.grep(%r{^(test|spec|features)/})
  gem.require_paths       = ["lib"]

  gem.add_development_dependency 'rspec', '~> 2.11.0'
  gem.add_development_dependency 'rake', '~> 11.3'
end
