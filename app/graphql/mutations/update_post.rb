module Mutations
  class UpdatePost < BaseMutation
    argument :id, Integer, required: true
    argument :title, String, required: false
    argument :body, String, required: false

    type Types::PostType

    def resolve(id:, **attributes)
      Post.find(id).tap { |post| post.update!(attributes) }
    end
  end
end
