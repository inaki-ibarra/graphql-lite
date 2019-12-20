require_relative 'base_argument'

module Types
  class BaseField < GraphQL::Schema::Field
    argument_class Types::BaseArgument
  end
end