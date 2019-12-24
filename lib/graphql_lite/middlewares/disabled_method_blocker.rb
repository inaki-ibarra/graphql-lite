# frozen_string_literal: true

module GraphQLLite
  module Middlewares
    class DisabledMethodBlocker
      def initialize(app)
        @app = app
      end

      def call(env)
        request = Rack::Request.new(env)

        if request.get? || request.post?
          @app.call(env)
        else
          err_msg = "#{request.request_method} request method is not allowed."
          [405, { 'Content-Type' => 'text/html' }, [err_msg]]
        end
      end
    end
  end
end
