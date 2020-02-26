class HongkongsController < ApplicationController
  before_action :authenticate_user!
  
  def new
    @hongkong = Hongkong.includes(:user)
    @hongkongs = Hongkong.new
  end

  def create
    Hongkong.create(hongkong_params)
    redirect_to new_hongkong_path
  end

  private
  def hongkong_params
    params.require(:hongkong).permit(:content, :image).merge(user_id: current_user.id)
  end
end
