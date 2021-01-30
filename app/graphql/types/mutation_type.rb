module Types
  class MutationType < BaseObject
    field :create_post, mutation: Mutations::CreatePost
    field :create_comment, mutation: Mutations::CreateComment
  end
end
