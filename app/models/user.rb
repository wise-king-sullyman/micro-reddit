class User < ApplicationRecord
  has_many :posts, dependent: :destroy

  validates :username, presence: true, uniqueness: true
  validates :password, presence: true, length: { minimum: 5 }
end
