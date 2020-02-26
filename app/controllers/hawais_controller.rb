class HawaisController < ApplicationController
  before_action :authenticate_user!
  
  def new
    @hawai = Hawai.includes(:user)
    @hawais = Hawai.new
  end

  def create
    Hawai.create(hawai_params)
    redirect_to new_hawai_path
  end

  private
  def hawai_params
    params.require(:hawai).permit(:content, :image).merge(user_id: current_user.id)
  end
end
