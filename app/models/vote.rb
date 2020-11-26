class Vote < ApplicationRecord
  belongs_to :user
  has_many :topics, dependent: :destroy, inverse_of: :vote
  accepts_nested_attributes_for :topics
  #has_many :favorites, dependent: :destroy
end
