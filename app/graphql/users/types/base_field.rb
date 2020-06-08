module Users
  module Types
    class BaseField < GraphQL::Schema::Field
      argument_class Users::Types::BaseArgument
    end
  end
end
