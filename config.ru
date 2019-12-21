require_relative 'lib/graphql_lite/application'

# Use middlewares
use Rack::Reloader, 0

file = File.new("log/application.log", 'a+')
file.sync = true
use Rack::CommonLogger, file

# Run the application
run GraphQLLite::Application.new