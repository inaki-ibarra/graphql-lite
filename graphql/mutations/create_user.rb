# frozen_string_literal: true

require_relative 'base_mutation'
require_relative '../types/user_type'

module Mutations
  class CreateUser < BaseMutation
    argument :name, String, required: true

    type Types::UserType

    def resolve(name: nil)
      # Save Implementation here
      # Then return the object
      { id: 2, name: name }
    end
  end
end
