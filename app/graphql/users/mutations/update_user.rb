# frozen_string_literal: true

module Users
  module Mutations
    class UpdateUser < BaseMutation
      argument :first_name, String, required: false
      argument :last_name, String, required: false

      field :me, SchemaTypes::UserType, null: true

      def resolve(**attributes)
        if current_user.update(attributes)
          { me: current_user }
        else
          build_errors(current_user, 'UPDATE_USER_INPUT_ERROR')
          return
        end
      end
    end
  end
end
