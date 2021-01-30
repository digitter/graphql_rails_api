module Mutations
  class CreateComment < BaseMutation
    argument :content, String, required: true
    argument :post_id, Integer, required: true

    type Types::CommentType

    def resolve(content: nil, post_id: nil)
      Comment.create!(content: content, post_id: post_id)
    end
  end
end
