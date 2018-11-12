class Comment < ApplicationRecord
  belongs_to :user
  belongs_to :hike

  validates :content, presence: true, length: { maximum: 500 }
end
