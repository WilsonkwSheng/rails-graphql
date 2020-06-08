module Users
  module Types
    class BaseObject < GraphQL::Schema::Object
      field_class Users::Types::BaseField
    end
  end
end
