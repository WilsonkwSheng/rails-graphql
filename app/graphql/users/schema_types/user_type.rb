# frozen_string_literal: true

module Users
  module SchemaTypes
    class UserType < Types::BaseObject
      field :id, Integer, null: true
      field :email, String, null: true
    end
  end
end
