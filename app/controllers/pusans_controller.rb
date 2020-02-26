class PusansController < ApplicationController
  before_action :authenticate_user!
  
  def new
    @pusan = Pusan.includes(:user)
    @pusans = Pusan.new
  end

  def create
    Pusan.create(pusan_params)
    redirect_to new_pusan_path
  end

  private
  def pusan_params
    params.require(:pusan).permit(:content, :image).merge(user_id: current_user.id)
  end
end
