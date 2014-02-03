$LOAD_PATH.unshift(File.dirname(__FILE__))
$LOAD_PATH.unshift(File.join(File.dirname(__FILE__), '..', 'lib'))

FIXTURES = File.expand_path(File.join(File.dirname(__FILE__), 'fixtures'))

require 'opt_parse_validator'

if ENV['TRAVIS'] || ENV['COVERAGE']
  require 'simplecov'

  if ENV['TRAVIS']
    require 'coveralls'
    SimpleCov.formatter = Coveralls::SimpleCov::Formatter
  end

  SimpleCov.start do
    add_filter '/spec/'
  end
end
