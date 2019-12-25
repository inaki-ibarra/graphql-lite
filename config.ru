# frozen_string_literal: true

require_relative 'lib/graphql_lite/application'
require_relative 'lib/graphql_lite/middlewares/disabled_method_blocker'

# Build rack stack
app = Rack::Builder.new do
  use Rack::Reloader, 0

  file = File.new('log/application.log', 'a+')
  file.sync = true
  use Rack::CommonLogger, file

  use GraphQLLite::Middlewares::DisabledMethodBlocker

  run GraphQLLite::Application.new
end

# Run the application
run app
