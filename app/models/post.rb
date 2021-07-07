class Post < ApplicationRecord
  belongs_to :user, foreign_key: 'user_id'

  validates :title, presence: true, length: { minimum: 3 }
  validates :link, presence: true, format: { with: %r{\Ahttps://} }
end
