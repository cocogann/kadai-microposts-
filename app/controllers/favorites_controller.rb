class FavoritesController < ApplicationController
  before_action :require_user_logged_in
  
  def create
    micropost = Micropost.find(params[:micropost_id])
    current_user.favo(micropost)
    flash[:succes] = "お気に入りしました。"
    redirect_back(fallback_location: root_path)
  end
  
  def destroy
    micropost = Micropost.find(params[:micropost_id])
    current_user.unfavo(micropost)
    flash[:succes] = "お気に入りを解除しました。"
    redirect_back(fallback_location: root_path)
  end
    
  
end
