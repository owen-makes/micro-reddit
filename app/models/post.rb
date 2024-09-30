class Post < ApplicationRecord
  belongs_to :user
  has_many :comments
  validates :title, presence: true,
                    length: { in: 5..40 }
  validates :link, presence: true, if: -> { body.blank? }
  validates :body, presence: true, if: -> { link.blank? },
                  length: { maximum: 500 }
  validates :user_id, presence: true
end
