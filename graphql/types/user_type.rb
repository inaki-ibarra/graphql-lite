require_relative 'base_object'

# Sample Type
module Types
  class UserType < Types::BaseObject
    description "A sample type"
    field :id, ID, null: false
    field :name, String, null: false
  end
end