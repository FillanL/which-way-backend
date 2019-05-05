class GameSerializer < ActiveModel::Serializer
  attributes :id, :high_score,:difficulty,:level
  belongs_to :user
end
