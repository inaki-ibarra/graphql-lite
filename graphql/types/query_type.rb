# frozen_string_literal: true

require_relative 'user_type'

module Types
  class QueryType < GraphQL::Schema::Object
    field :user, Types::UserType, null: false do
      description 'Find a post by ID'
      argument :id, ID, required: true
    end

    def user(id:)
      # Fetch implementation here
      { id: id, name: 'Juan dela Cruz' }
    end
  end
end
