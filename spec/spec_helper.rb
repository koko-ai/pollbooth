require 'rubygems'
require 'bundler'

Bundler.require

Dir["./spec/support/**/*.rb"].each {|f| require f}

RSpec.configure do |config|
  include AsyncHelper
  config.color_enabled = true
end
