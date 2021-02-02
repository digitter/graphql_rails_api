module Mutations
  class CreateUser < BaseMutation
    field :user, Types::UserType, null: true
    # type Types::UserType

    argument :name, String, required: true
    argument :email, String, required: true
    argument :password, String, required: true
    argument :password_confirmation, String, required: true


    def resolve(name:, email:, password:, password_confirmation:)
      user = User.create!(
        name: name,
        email: email,
        password: password,
        password_confirmation: password_confirmation
      )

      { user: user }
    end
  end
end

