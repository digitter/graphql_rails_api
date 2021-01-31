module Mutations
  class DestroyComment < BaseMutation
    argument :id, Integer, required: true

    type Types::CommentType

    def resolve(id:)
      Comment.find(id).destroy!
    end
  end
end
