# encoding: utf-8
require './lib/sanitize/version'

Gem::Specification.new do |s|
  s.name     = 'sanitize'
  s.summary  = 'Whitelist-based HTML and CSS sanitizer.'
  s.version  = Sanitize::VERSION
  s.authors  = ['Ryan Grove']
  s.email    = 'ryan@wonko.com'
  s.homepage = 'https://github.com/rgrove/sanitize/'
  s.licenses = ['MIT']

  s.description = 'Sanitize is a whitelist-based HTML and CSS sanitizer. Given a list of acceptable elements, attributes, and CSS properties, Sanitize will remove all unacceptable HTML and/or CSS from a string.'

  s.platform = Gem::Platform::RUBY
  s.required_ruby_version = Gem::Requirement.new('>= 1.9.2')
  s.required_rubygems_version = Gem::Requirement.new('>= 1.2.0')

  # Runtime dependencies.
  s.add_dependency('crass',     '~> 1.0.2')
  s.add_dependency('nokogiri',  '[~> 1.8')
  s.add_dependency('nokogumbo', '~> 1.4.1')

  # Development dependencies.
  s.add_development_dependency('minitest',  '~> 5.6.0')
  s.add_development_dependency('rake',      '~> 10.4.2')
  s.add_development_dependency('redcarpet', '~> 3.2.3')
  s.add_development_dependency('yard',      '~> 0.8.7')

  s.require_paths = ['lib']

  s.files = [
    'HISTORY.md',
    'LICENSE',
    'README.md'
  ] + Dir.glob('lib/**/*.rb') + Dir.glob('test/**/*.rb')
end
