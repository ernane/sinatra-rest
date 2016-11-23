# Set the root directory.
#
set :root, File.expand_path("../..", __FILE__)

# Enable logging.
#
set :logging, true

# Dump errors only in development mode.
#
set :dump_errors, Sinatra::Base.development?

# Raise errors only in development mode.
#
set :raise_errors, Sinatra::Base.development?

set :session_secret, "4e4f3cc0b60720125f439a018m17e35400fe54d642b271abfec2571095eccb6342e3c3db1a731289849801"
