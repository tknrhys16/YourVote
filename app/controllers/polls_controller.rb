class PollsController < ApplicationController
  def create
    vote = Vote.find(params[:vote_id])
    poll = current_user.polls.new(topic_id: params[:poll][:topic_id])
    poll.save
    redirect_to vote_path(vote)
  end

  def destroy
    vote = Vote.find(params[:vote_id])
    topic = Topic.find(params[:topic_id])
    poll = current_user.polls.find_by(topic_id: topic.id)
    poll.destroy
    redirect_to vote_path(vote)
  end
end
