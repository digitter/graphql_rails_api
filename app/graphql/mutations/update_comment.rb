module Mutations
  class UpdateComment < BaseMutation
    argument :id, Integer, required: true
    argument :content, String, required: false

    type Types::CommentType

    def resolve(id:, **attributes)
      Comment.find(id).tap { |comment| comment.update!(attributes) }
    end
  end
end
