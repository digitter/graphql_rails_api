class User < ApplicationRecord
  has_many :posts, dependent: :destroy
  has_many :comments, dependent: :destroy

  validates :name, presence: true
  validates :email, presence: true, uniqueness: true

  has_secure_password
end

