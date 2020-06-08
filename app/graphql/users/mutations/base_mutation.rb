module Users
  module Mutations
    class BaseMutation < GraphQL::Schema::RelayClassicMutation
      argument_class Users::Types::BaseArgument
      field_class Users::Types::BaseField
      input_object_class Users::Types::BaseInputObject
      object_class Users::Types::BaseObject

      def ready?(**_args)
        if current_user.blank?
          unauthorized_access
        else
          true # Return true to continue the mutation:
        end
      end

      def unauthorized_access
        message = 'Unauthorized access'
        context.add_error(GraphQL::ExecutionError.new(message))
      end

      def current_user
        context[:current_user]
      end

      def build_errors(record, error_type_name = "INPUT_ERROR")
        record.errors.map do |attr, message|
          message = "#{attr.to_s.humanize} #{message}"
          context.add_error(GraphQL::ExecutionError.new(
            message, extensions: { code: error_type_name, attribute: attr }
          ))
        end
      end
    end
  end
end