class FriendshipsController < ApplicationController
  def create
    friend = User.find(params[:firend])
    current_user.friendships.build(firend_id: friend.id)
    if current_user.save
      flash[:notice] = "Following User"
    else
      flash[:alert] = "There was somthing wrong with the tracking requiest"
    end 
    redirect_to my_friends_path
  end

  def destroy
    friendship = current_user.friendships.where( firend_id: params[:id]).first
    friendship.destroy
    flash[:notice] = "Unfollowed seccessfully"
    redirect_to my_friends_path
  end

end
