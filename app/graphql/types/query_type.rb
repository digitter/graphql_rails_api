module Types
  class QueryType < Types::BaseObject
    field :post, PostType, null: false do
      description 'find a post by id'
      argument :id, ID, requierd: true
    end

    def post(id:)
      Post.find(id)
    end
  end
end
