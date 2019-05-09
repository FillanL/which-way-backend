class User < ApplicationRecord
    has_many :games
    # validates :username, presence: true
    # validates_length_of :username, :maximum => 7
end
