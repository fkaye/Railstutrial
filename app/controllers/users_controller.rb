class UsersController < ApplicationController
  def create
    @friend = Friend.new(friend_params)

    if @friend.save
      redirect_to @friend, notice: 'Friend was successfully created.'
     else
       render action: 'new'
    end
  end

  private

  def friend_params
    params.require(:friend).permit(:avatar, :name)
  end
end
