class Article < ApplicationRecord
  has_many :comments, as: :commentable
  belongs_to :user
  has_one_attached :avatar
  enum status: [:is_private, :is_published]
end
