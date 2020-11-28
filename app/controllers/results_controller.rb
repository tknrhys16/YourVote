class ResultsController < ApplicationController

  def index
    @votes = Vote.all
  end

  def show
    vote = Vote.find(params[:id])
    @topics = vote.topics
    @vote = Vote.find(params[:id])

    @top_topics = []
    @topics.each do |topic|
      if @top_topics[0]
        if @top_topics[0].polls.count < topic.polls.count
         @top_topics = [topic]
        elsif @top_topics[0].polls.count == topic.polls.count
         @top_topics.push(topic)
        end
      else
        @top_topics.push(topic)
      end
    end
  end

end
