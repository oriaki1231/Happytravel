class BalisController < ApplicationController
  before_action :authenticate_user!
  
  def new
    @bali = Bali.includes(:user)
    @balis = Bali.new
  end

  def create
    Bali.create(bali_params)
    redirect_to new_bali_path
  end

  private
  def bali_params
    params.require(:bali).permit(:content, :image).merge(user_id: current_user.id)
  end
end
