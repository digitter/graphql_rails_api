module Mutations
  class CreateUser < BaseMutation
    argument :name, String, required: true
    argument :email, String, required: true
    argument :password, String, required: true
    argument :password_confirmation, String, required: true

    type Types::UserType

    def resolve(name:, email:, password:, password_confirmation:)
      user = User.create!(
        name: name,
        email: email,
        password: password,
        password_confirmation: password_confirmation
      )

      {
        id: user.id,
        name: user.name,
        email: user.email
      }
    end
  end
end

