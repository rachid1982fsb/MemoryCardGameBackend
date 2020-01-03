class User < ApplicationRecord
    has_many :images, dependent: :destroy
    has_many :scores

    validates :username, presence: true
end
