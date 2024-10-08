class Comment < ApplicationRecord
  belongs_to :post
  belongs_to :user

  validates :body, presence: true,
                  length: { maximum: 200 }
  validates :user_id, presence: true
  validates :post_id, presence: true
end
