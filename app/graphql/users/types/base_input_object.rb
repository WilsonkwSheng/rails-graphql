module Users
  module Types
    class BaseInputObject < GraphQL::Schema::InputObject
      argument_class Users::Types::BaseArgument
    end
  end
end
