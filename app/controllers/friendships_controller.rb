class FriendshipsController < ApplicationController

  def create
    sleep(2)
    @friendship = Friendship.create!(:friender_id => current_user.id,
                       :friendee_id => params[:user_id])
    render :json => @friendship
  end

  def destroy
    @friendship = Friendship.find_by_friender_id_and_friendee_id(current_user.id,
    params[:user_id])

    @friendship.destroy
    render :json  => @friendship
  end
end
