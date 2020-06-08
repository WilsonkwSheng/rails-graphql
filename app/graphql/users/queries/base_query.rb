# frozen_string_literal: true
module Users
  module Queries
    class BaseQuery < GraphQL::Schema::Resolver
      # common/shared methods can go here.
      def ready?(**_args)
        if current_user.blank?
          unauthorized_access
        else
          true # Return true to continue the query:
        end
      end

      def unauthorized_access
        message = 'Unauthorized access'
        context.add_error(GraphQL::ExecutionError.new(message))
      end

      def current_user
        context[:current_user]
      end
    end
  end
end
