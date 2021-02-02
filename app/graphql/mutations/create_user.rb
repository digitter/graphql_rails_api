module Mutations
  class CreateUser < BaseMutation
    argument :name, String, required: true
    argument :email, String, required: true
    argument :password, String, required: true
    argument :password_digest, String, required: true

    type Types::UserType

    def resolve(name:, email:, password:, password_digest:)
      User.create!(
        name: name,
        email: email,
        password: password,
        password_digest: password_digest
      )
    end
  end
end

