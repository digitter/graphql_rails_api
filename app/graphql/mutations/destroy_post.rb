module Mutations
  class DestroyPost < BaseMutation
    argument :id, Integer, required: true

    type Types::PostType

    def resolve(id:)
      Post.find(id).destroy!
    end
  end
end
