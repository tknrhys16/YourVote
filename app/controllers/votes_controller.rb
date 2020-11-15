class VotesController < ApplicationController
  
  def new
  end
  
  def complete
  end
  
  def create
    @vote = Vote.new(vote_params)
    @user = current_user
    @vote.user_id = current_user.id
    if @vote.save
      redirect_to complete_path(@book)#, notice: "You have created vote successfully."
    else
      render 'new'
    end
  end
  
  def index
    @votes = Vote.all
  end
  
  def show
  end
  
  def destroy
  end
end
