require_relative '../../graphql/schema.rb'

module GraphQLLite
  class Application
    def call(env)
      request = Rack::Request.new(env)  
      payload = payload_by_request(request)
      result = execute_schema(payload)
      respond(result)
    end

  protected 

    def payload_by_request(request)
      if request.get? 
        request.params
      elsif request.post?
        body = request.body.read
        JSON.parse(body)
      end  
    end

    def execute_schema(payload)
      Schema.execute(
        payload['query'], 
        variables: payload['variables'],
        operation_name: payload['operationName'],
        context: {}, 
      ).to_json
    end

    def respond(result)
      headers = {
        'Content-Type' => 'application/json', 
        'Content-Length' => result.bytesize.to_s
      }
      [200, headers , [result]]
    end
  end
end