require_relative 'lib/graphql_lite/application'

# Use middlewares
use Rack::Reloader, 0

# Run the application
run GraphQLLite::Application.new