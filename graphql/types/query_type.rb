require_relative 'user_type'

module Types
  class QueryType < GraphQL::Schema::Object
    field :user, Types::UserType, null: false do
      description "Find a post by ID"
      argument :id, ID, required: true
    end
  
    def user(id:)
      # Fetch implementation here
      {id: 1, name: "Juan dela Cruz"}
    end
  end
end