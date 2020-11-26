class Topic < ApplicationRecord
  belongs_to :vote, inverse_of: :topics
  has_many :polls, dependent: :destroy
  
  

# 投票機能
  def polled_by?(user)
    polls.where(user_id: user.id).exists?
  end

end
