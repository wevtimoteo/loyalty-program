require 'minitest'

require 'minitest/autorun'
require 'minitest/spec'
require 'minitest/reporters'

ENV['RUBY_ENV'] = 'test'

Minitest::Reporters.use!
