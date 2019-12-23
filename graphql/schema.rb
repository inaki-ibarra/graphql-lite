# frozen_string_literal: true

require 'graphql'
require_relative 'types/query_type'
require_relative 'types/mutation_type'

class Schema < GraphQL::Schema
  mutation(Types::MutationType)
  query(Types::QueryType)
end
