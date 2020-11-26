class VotesController < ApplicationController

  def new
    @vote = Vote.new
    4.times { @vote.topics.build }
  end

  def complete
  end

  def create
    @vote = Vote.create(vote_params)
    @user = current_user

    # @vote.user_id = current_user.id
    if @vote.save
      redirect_to complete_path#, notice: "You have created vote successfully."
    else
      render 'new'
    end
  end

  def index
    @votes = Vote.all
    #@topics = Topic.all
  end

  def show
    @poll = Poll.new
    @vote = Vote.find(params[:id])
    @topic = @vote.topics
  end

  def destroy
    @vote = Vote.find(params[:id])
    @vote.destroy
    redirect_to user_path(current_user)
  end

 def update
   @vote = Vote.find(params[:id])
   @vote.status = false
   @vote.update(vote_status_params)
   redirect_to user_path(current_user)
 end



  private

  def vote_params
    params.require(:vote).permit(:title, :body, topics_attributes:[:body]).merge(user_id: current_user.id)
  end

  def vote_status_params
    params.permit(:status)
  end

  # 直打ち防止
  def correct_user
    vote = Vote.find(params[:id])
    user = vote.user
    redirect_to votes_path if current_user != user
  end

end
