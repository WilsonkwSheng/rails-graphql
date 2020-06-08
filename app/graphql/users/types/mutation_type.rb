module Users
  module Types
    class MutationType < Users::Types::BaseObject
      field :update_user, mutation: Mutations::UpdateUser
    end
  end
end
