class SoulsController < ApplicationController

  def new
    @soul = Soul.includes(:user)
    @souls = Soul.new
  end

  def create
    
    Soul.create(soul_params)
    # binding.pry
    redirect_to new_soul_path
  end

  private
  def soul_params
    params.require(:soul).permit(:content, :image).merge(user_id: current_user.id)
  end
  
end
