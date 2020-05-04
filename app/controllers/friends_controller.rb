class FriendsController < ApplicationController
  def index
    @friends = Friend.all
  end

  def new
    @friend = Friend.new
  end

  def create
    Friend.create(friend_params)
  end

  def show
    @friend = Friend.find(params[:id])
  end

  def edit
    @friend = Friend.find(params[:id])
  end

  def update
    friend = Friend.find(params[:id])
    friend.update(friend_params)
  end

  def destroy
    friend = Friend.find(params[:id])
    friend.destroy
  end

  private

  def friend_params
    params.require(:friend).permit(:name,:point,:goal)
  end

end
