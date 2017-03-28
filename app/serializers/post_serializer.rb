class PostSerializer < ActiveModel::Serializer
  attributes :id, :title, :body
  has_one :person
end
