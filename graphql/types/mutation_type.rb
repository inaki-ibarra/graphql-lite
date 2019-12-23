# frozen_string_literal: true

require_relative 'base_object'
require_relative '../mutations/create_user'

module Types
  class MutationType < Types::BaseObject
    field :create_user, mutation: Mutations::CreateUser
  end
end
