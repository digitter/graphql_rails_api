module Mutations
  class SigninUser < BaseMutation
    # field :user, Types::UserType, null: true
    field :name, String, null: true
    # type Types::UserType

    argument :email, String, required: true
    argument :password, String, required: true

    def resolve(email:, password:)
      user = User.includes(:posts, :comments)
                 .find_by(email: email)
                 .try(:authenticate, password)

      context[:session][:user_id] = user.id

      { user: user }
      # { name: user.name }
   end
  end
end

