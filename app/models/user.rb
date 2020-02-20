class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  # attr_accessible :email, :password, :password_confirmation, :remember_me,:username
  has_many :comments, as: :commentable
  has_many :articles
  has_many :user_comments, :class_name => 'Comment', :foreign_key => 'user_id'
  has_one_attached :avatar
end
