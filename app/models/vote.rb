class Vote < ApplicationRecord
  belongs_to :user
  has_many :topics, dependent: :destroy, inverse_of: :vote
  accepts_nested_attributes_for :topics
  validates :title, presence: true
  validates :body, presence: true
end
