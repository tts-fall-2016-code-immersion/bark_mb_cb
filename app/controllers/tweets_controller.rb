class TweetsController < ApplicationController

  before_action :set_tweet, only: [:edit, :update, :show, :destroy]

  def index
    @tweets = Tweet.all
  end

  def new
    @tweet = Tweet.new
  end

  def create
    @tweet = Tweet.new(tweet_params)

    respond_to do |format|
      if @tweet.save
        format.html { redirect_to tweet_path(@tweet.id), notice: 'success!'}
      else
        format.html { render :new, error: 'there was a problem' }
      end
    end
  end

  def edit
  end

  def show
  end

  def update

    respond_to do |format|
      if @tweet.update(tweet_params)
        format.html { redirect_to tweet_path(@tweet.id), notice: "success"}
      else
        format.html { render :edit }
      end
    end
  end
  
  def destroy
      @tweet.destroy

<<<<<<< HEAD
  def destroy
    @tweet = Tweet.destroy(tweet_params)
    @tweet.destroy

  end


=======
      respond_to do |format|
        format.html { redirect_to root_path, notice: 'Tweet was deleted'}
      end
    end
>>>>>>> 461d31728e8f1c6c12a2ccb3bdf90686fbf11d53
 private

 def set_tweet
   @tweet = Tweet.find(params[:id])
 end

 def tweet_params
    params.require(:tweet).permit(:message, :user_id)
  end
end
