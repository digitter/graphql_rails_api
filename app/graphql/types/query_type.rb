module Types
  class QueryType < Types::BaseObject
    field :post, PostType, null: false do
      description 'find a post by id'
      argument :id, ID, required: true
    end

    field :posts, [PostType], null: true do
      description 'fetch all posts'
    end

    field :comment, CommentType, null: false do
      description 'find a comment by id'
      argument :id, ID, required: true
    end

    def post(id:)
      Post.find(id)
    end

    def posts
      Post.all.includes(:comments)
    end

    def comment(id:)
      Comment.find(id)
    end
  end
end
