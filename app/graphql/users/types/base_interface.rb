module Users
  module Types
    module BaseInterface
      include GraphQL::Schema::Interface

      field_class Users::Types::BaseField
    end
  end
end
