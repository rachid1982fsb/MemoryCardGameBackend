class ScoreSerializer < ActiveModel::Serializer
  attributes :id, :gamelevel, :finish_time, :number_of_flips
end
