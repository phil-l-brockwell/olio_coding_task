class Like < ApplicationRecord
  validates :article_id, presence: true
end
