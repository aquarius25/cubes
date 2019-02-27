class TweetsController < ApplicationController

  def index
    @tweets = Tweet.includes(:user).order("created_at ASC")
  end

  def new
  end

  def create
    Tweet.create(image: tweet_params[:image],text: tweet_params[:text], user_id: current_user.id)
    redirect_to index: :action
  end

  def edit
  end

  def show
  end




  private

  def tweet_paramsurrent
    params.require(:tweet).permit(:text,:image).merge(user_id: current_user.id)
  end
end
