# frozen_string_literal: true
module Users
  module Queries
    class Me < Queries::BaseQuery
      description 'Get Current User Details'
  
      type SchemaTypes::UserType, null: true
  
      def resolve
        current_user
      end
    end
  end  
end
