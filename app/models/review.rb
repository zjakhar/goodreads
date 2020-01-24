class Review < ApplicationRecord
  belongs_to :book

  validates :rating, presence: true
  validates :body, presence: true

end
