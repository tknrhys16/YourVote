class ResultsController < ApplicationController

  def index
    @votes = Vote.all
  end

  def show
    @vote = Vote.find(params[:id])
    @topic = @vote.topics
  end

end
