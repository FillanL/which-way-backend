class GameSerializer < ActiveModel::Serializer
  attributes :id, :high_score,:difficulty,:level, :score
  belongs_to :user
end
