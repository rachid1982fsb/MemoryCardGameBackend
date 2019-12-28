class UserSerializer < ActiveModel::Serializer
  attributes :id, :username, :stars, :images, :scores
end
