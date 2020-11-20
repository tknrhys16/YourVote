class Vote < ApplicationRecord
  belongs_to :user
  has_many :topics, dependent: :destroy
  #has_many :favorites, dependent: :destroy
end
