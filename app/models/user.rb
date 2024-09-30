class User < ApplicationRecord
  has_many :posts
  has_many :comments
  # has_secure_password

  validates :username, presence: true,
                       uniqueness: { message: ->(object, data) { "#{data[:value]} is already taken." } },
                       format: { with: /\A[a-zA-Z0-9_]+\z/, message: "Only allows letters, numbers, and underscores" },
                       length: { in: 3..20 }

  validates :password, presence: true, length: { minimum: 8 }
end
