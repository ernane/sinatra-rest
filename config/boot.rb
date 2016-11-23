require "bundler"
require "sinatra/activerecord"
require "pry-meta"
require "sinatra/json"
require "json"

Bundler.setup(:default, ENV.fetch("RACK_ENV", :development))
Bundler.require

require File.expand_path("../environment", __FILE__)

# Add directories to load path.
#
$LOAD_PATH.tap do |path|
  path << File.expand_path("../../app", __FILE__)
end

# Load all initializers. Files will be loaded in
# alphabetical order.
#
files = Dir[File.expand_path("../../app/**/*.rb", __FILE__)].sort

files.each do |file|
  require file
end
