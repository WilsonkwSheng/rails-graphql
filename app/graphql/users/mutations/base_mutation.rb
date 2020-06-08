module Mutations
  class BaseMutation < GraphQL::Schema::RelayClassicMutation
    argument_class Users::Types::BaseArgument
    field_class Users::Types::BaseField
    input_object_class Users::Types::BaseInputObject
    object_class Users::Types::BaseObject
  end
end
