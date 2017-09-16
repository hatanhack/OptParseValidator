# coding: utf-8

lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)

require 'opt_parse_validator/version'

Gem::Specification.new do |s|
  s.name                  = 'opt_parse_validator'
  s.version               = OptParseValidator::VERSION
  s.platform              = Gem::Platform::RUBY
  s.required_ruby_version = '>= 2.2.2'
  s.authors               = ['WPScanTeam']
  s.email                 = ['team@wpscan.org']
  s.summary               = 'Ruby OptionParser Validators'
  s.description           = 'Implementation of validators for the ruby OptionParser lib. ' \
                            'Mainly used in the CMSScanner gem to define the cli options available'
  s.homepage              = 'https://github.com/wpscanteam/OptParseValidator'
  s.license               = 'MIT'

  s.files                 = `git ls-files -z`.split("\x0").reject do |file|
    file =~ %r{^(?:
      spec\/.*
      |Gemfile
      |Rakefile
      |\.rspec
      |\.gitignore
      |\.rubocop.yml
      |\.travis.yml
    )$}x
  end
  s.test_files            = []
  s.executables           = s.files.grep(%r{^bin/}) { |f| File.basename(f) }
  s.require_paths         = ['lib']

  s.add_dependency 'addressable', '~> 2.5.0'
  s.add_dependency 'activesupport', '~> 5.1.0'

  s.add_development_dependency 'rake', '~> 12.0'
  s.add_development_dependency 'rspec',     '~> 3.6.0'
  s.add_development_dependency 'rspec-its', '~> 1.2.0'
  s.add_development_dependency 'bundler',   '~> 1.6'
  s.add_development_dependency 'rubocop',   '~> 0.50.0'
  s.add_development_dependency 'simplecov', '~> 0.14.0' # Can't update to 0.15 as it breaks coveralls dep
  s.add_development_dependency 'coveralls', '~> 0.8.0'
end
