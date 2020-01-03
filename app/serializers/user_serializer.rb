class UserSerializer < ActiveModel::Serializer
  attributes :id, :username, :password, :stars, :images, :scores

  def images
    ActiveModel::SerializableResource.new(object.images, each_serializer: ImageSerializer)
  end
  def scores
    ActiveModel::SerializableResource.new(object.scores, each_serializer: ScoreSerializer)
  end
end
